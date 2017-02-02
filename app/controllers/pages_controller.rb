class PagesController < ApplicationController

  # before_action :authenticate_admin!

  def edit
    @content = Page.find(params[:id])
  end

  def update
    if @content.update(page_params)
      redirect_to current_path, notice: "Content successfully updated"
    else
      render :edit
    end
  end

  private

    def page_params
      params.require(:page).permit(:text_field1, :text_field2,:text_field3,
      :text_field4,:text_field5, :text_field6,:text_field7, :image_field1,
      :image_field2, :image_field3, :image_field4, :image_field5, :image_field6,
      :image_field7, :image_field8, )
    end

    def set_page
      @content = Page.find(params[:id])
    end
end
