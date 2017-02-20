class LessonController < ApplicationController

  before_action :set_message, only: :step7

  def step1
    render text: "こんにちは、#{params[:name]}さん"
  end

  def step2
  end

  def step3
    flash[:notice] = "step4に移動します"
    redirect_to action: "step4"
  end

  def step4
    render text: flash[:notice]
  end

  def step5
    render text: request.remote_ip
  end

  def step7
    render text: @message
  end

  def step8
    @price = (2000 * 1.05).floor
  end

  def step9
    @price = 1000
    render "step8"
  end

  def step10
    @comment = "<script>alert('危険')</script>こんにちは"
  end

  def step11
    @comment = "<strong>安全なHTML</strong>"
  end

  def step12
    @population = 704414
    @surface = 141.31
  end

  def step13
    @time =Time.now
  end

  def step15
    @message = "ごきげんいかが？\nrailsの勉強を頑張りましょう"
  end

  def step16
  end

  def step17
  end

  private

  def set_message
    @message = "こんにちは"
  end
end
