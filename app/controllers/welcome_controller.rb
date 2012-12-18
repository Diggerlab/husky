class WelcomeController < ApplicationController
	before_filter :set_locale, :only => [:zh, :ja, :en]
	def index
	  I18n.locale = extract_locale_from_accept_language_header
	  if %w(zh ja).include?(I18n.locale.to_s.downcase)
		  redirect_to "/welcome/#{I18n.locale}" and return
	  else
	  	redirect_to "/welcome/en" and return
	  end 
	end

	private
	def extract_locale_from_accept_language_header
	  request.env['HTTP_ACCEPT_LANGUAGE'].scan(/^[a-z]{2}/).first if request.env['HTTP_ACCEPT_LANGUAGE']
	end

	def set_locale
		I18n.locale = self.action_name
	end
end