class HomeController < ApplicationController
  
  def dashboard
  end

require 'mail'

  def mail
      Mail.defaults do
      retriever_method :imap, 
              :address    => "ashoka.iitp.ac.in",
              :port       => 143,
              :user_name  => 'tanmay.cs14',
              :password   =>  ENV["WEBMAIL_PASSWORD"] ,
              :enable_ssl => false
      end

      @emails =  Mail.first
      @mail = Mail.read_from_string(@emails.to_s)

  end

end
