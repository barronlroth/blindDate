class User < ApplicationRecord
	
	def self.sign_in_from_omniauth(auth)
    find_by(provider: auth['provider'], uid: auth['uid']) ||
            create_user_from_omniauth(auth)
  end
  
   def self.create_user_from_omniauth(auth)
    access_token = auth['credentials']['token']
    #@graph = Koala::Facebook::GraphAPI.new(access_token)
    create(
      provider: auth['provider'],
      uid: auth['uid'],
      name: auth['info']['name'],
      oauth_token: auth['credentials']['token'],
      oauth_expires_at: auth['credentials']['expires_at'],
      likes: @graph.get_connections("me","likes"),
      location: auth['info']['location']
    )
  end

  def facebook
    @facebook ||= Koala::Facebook::GraphAPI.new(oauth_token)
 end
  
 		
end
