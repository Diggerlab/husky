class AppliesController < ApplicationController
  def create
    @apply = Apply.new(params[:apply])
    if @apply.save
      redirect_to :back, notice: 'Thank you! We will contact you soon.' 
    else
      redirect_to :back, alert: 'Please input your email address.' 
    end
  end

end
