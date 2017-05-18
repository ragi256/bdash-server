class User < ApplicationRecord
  has_one :auth_provider, class_name: 'UserAuthProvider'

  def self.find_or_create_by_auth_hash!(auth_hash)
    uid = auth_hash[:uid]
    provider_name = auth_hash[:provider]
    name = auth_hash[:info][:name]

    provider = UserAuthProvider.find_by(uid: uid, provider: provider_name)

    if provider
      user = provider.user
      user.update!(name: name)
    else
      transaction do
        user = create!(name: name)
        user.create_auth_provider!(provider: provider_name, uid: uid)
      end
    end

    user
  end
end
