class PartnershipsController < ApplicationController
  # POST /partnerships
  # POST /partnerships.json
  def create
    attendee = Attendee.find(params[:partnership][:attendee_id])
    partner = Attendee.find(params[:partnership][:partner_id])
    @partnership = Partnership.new(partnership_params)
    if @partnership.save && partner.update(sent: true) && attendee.update(sending: true)
      flash[:notice] = "Added partner."
      redirect_to root_url
    else
      flash[:error] = "Unable to add partner."
      redirect_to root_url
    end
  end

  # DELETE /partnerships/1
  # DELETE /partnerships/1.json
  def destroy
    @partnership = Partnership.find(params[:id])
    attendee = Attendee.find(@partnership.attendee_id)
    partner = Attendee.find(@partnership.partner_id)
    @partnership.destroy
    partner.update(sent: false)
    attendee.update(sending: false)
    flash[:notice] = "Removed partnership."
    redirect_to attendee
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def partnership_params
      params.require(:partnership).permit(:attendee_id, :partner_id)
    end
end
