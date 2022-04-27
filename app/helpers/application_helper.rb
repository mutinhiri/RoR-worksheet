module ApplicationHelper
    def gravatar_for(user)
        gravatar_id = Digest::MD5:: hexdigest
    end
end
