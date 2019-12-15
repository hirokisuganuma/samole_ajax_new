class VegetablesController < ApplicationController

  def index
    respond_to do |format|
      format.html
      format.pdf do
        # PDF文書を作成
        pdf = Prawn::Document.new
        # PDFに "Hello, world!!" と表示する
        pdf.text "Hello, world!!"
        send_data pdf.render,
        filename:    "hello.pdf",
        type:        "application/pdf",
        disposition: "inline"
      end
    end
  end

  def ajax_communication
    @vegetable = Vegetable.create(content_params)
    render json: {:content => @vegetable.content}
  end

  private
  def content_params
    params.require(:vegetable).permit(:content)
  end
end
