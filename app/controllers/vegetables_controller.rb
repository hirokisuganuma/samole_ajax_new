class VegetablesController < ApplicationController

  def ajax_communication
    @vegetable = Vegetable.create(content_params)
    render json: {:content => @vegetable.content}
  end

  private
  def content_params
    params.require(:vegetable).permit(:content)
  end
end
