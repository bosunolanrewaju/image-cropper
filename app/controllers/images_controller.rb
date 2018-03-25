class ImagesController < ApplicationController
  before_action :set_image, only: [:edit, :update]
  # GET /images/1/edit
  def edit
    respond_to do |format|
      format.html { render :crop }
    end
  end

  # PATCH/PUT /images/1
  # PATCH/PUT /images/1.json
  def update
    respond_to do |format|
      if @image.update(image_params)
        format.html { redirect_to users_path, notice: 'image was successfully updated.' }
        format.json { render :show, status: :ok, location: @image }
      else
        format.html { redirect_to edit_user_path(@image.user), notice: 'image could not be updated.' }
        format.json { render json: @image.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_image
      @image = Image.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def image_params
      params
        .require(:image)
        .permit(:id, :avatar, :crop_x, :crop_y, :crop_w, :crop_h)
    end
end
