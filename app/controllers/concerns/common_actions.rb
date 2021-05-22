module CommonActions
     extend ActiveSupport::Concern
   
     def set_color_code
        if user_signed_in?
            
        else
            @color_code 
        end
       @color_code = Site.find_by(public_uid: "b8a9f166ddfab86e7922").color_code
     end
   
end