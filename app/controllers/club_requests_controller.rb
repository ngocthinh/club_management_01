class ClubRequestsController < ApplicationController
  before_action :authenticate_user!
  protect_from_forgery except: :index

  def index
    @requests = current_user.club_requests
    if @requests
      respond_to do |format|
        format.js
      end
    end
  end

  def new
    @request = ClubRequest.new
    @organizations = current_user.user_organizations.joined
  end

  def create
    request = ClubRequest.new request_params
    request.time_club = time_club params[:club_request][:time_club]
    if request.save
      flash[:success] = t("success_create")
      redirect_to root_path
    else
      flash_error request
      redirect_to :back
    end
  end

  private
  def request_params
    club_type = params[:club_request][:club_type].to_i
    params.require(:club_request).permit(:name, :logo, :action,
      :organization_id, :member, :goal, :local_club,
      :content_club, :rules_club, :rule_finance, :time_join, :punishment,
      :plan, :goal).merge! user_id: current_user.id, club_type: club_type
  end

  def time_club time_club_params
    time_club_params.join(",") unless time_club_params.nil?
  end
end
