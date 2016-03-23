module HomeHelper




      def mailParse(mail, i)

        @mail = Mail.read_from_string(mail.to_s)

        showBody(@mail, i)
        
      end


        
    def showBody(mail, i) 

        @html_decoded_body[i] = nil
        @text_decoded_body[i] = nil

    if(mail.multipart?) 

          @multipart = true

          mail.parts.each do |part|
            if part.content_type.include?('html')
              @html_decoded_body[i] = part.body.decoded
            end
          end           

         mail.parts.each do |part|
            if part.content_type.include?('text')
              @text_decoded_body[i] = mail.body.decoded
            end
          end

          return true

        end

          return false
      end


end
