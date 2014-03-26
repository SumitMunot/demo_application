class ShippingDetailsController < ApplicationController
  before_action :set_shipping_detail, only: [:show, :edit, :update, :destroy]

  # GET /shipping_details
  # GET /shipping_details.json
  def index
    @shipping_details = ShippingDetail.all
  end

  # GET /shipping_details/1
  # GET /shipping_details/1.json
  def show
  end

  # GET /shipping_details/new
  def new
    @shipping_detail = ShippingDetail.new
  end

  # GET /shipping_details/1/edit
  def edit
  end

  # POST /shipping_details
  # POST /shipping_details.json
  def create
    @shipping_detail = ShippingDetail.new(shipping_detail_params)

    respond_to do |format|
      if @shipping_detail.save
        format.html { redirect_to @shipping_detail, notice: 'Shipping detail was successfully created.' }
        format.json { render action: 'show', status: :created, location: @shipping_detail }
      else
        format.html { render action: 'new' }
        format.json { render json: @shipping_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shipping_details/1
  # PATCH/PUT /shipping_details/1.json
  def update
    respond_to do |format|
      if @shipping_detail.update(shipping_detail_params)
        format.html { redirect_to @shipping_detail, notice: 'Shipping detail was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @shipping_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shipping_details/1
  # DELETE /shipping_details/1.json
  def destroy
    @shipping_detail.destroy
    respond_to do |format|
      format.html { redirect_to shipping_details_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shipping_detail
      @shipping_detail = ShippingDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shipping_detail_params
      params.require(:shipping_detail).permit(:full_address_name, :address_line_one, :address_line_two, :city_town, :state, :zip, :country, :user_id)
    end
end
