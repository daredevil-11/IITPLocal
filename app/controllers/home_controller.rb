class HomeController < ApplicationController

          @mail
          @html_decoded_body = Array.new(25) 
          @text_decoded_body = Array.new(25) 
          @multipart = Array.new(25, true)
  
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

      @emails =  Mail.find(:what => :last, :count => 25, :order => :desc)
      
  end 

end


