class User1 < ApplicationRecord

    validates :email, presence:true

    before_create :check_for_login

    def check_for_login
        self.login=email if login.blank?
    end
end
