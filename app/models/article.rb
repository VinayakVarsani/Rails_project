class Article < ApplicationRecord
    include Visible
  
    has_many :comments, dependent: :destroy
  
    validates :title, presence: true
    validates :body, presence: true, length: { minimum: 10 }

    before_validation :ensure_login_has_a_value

    private
    def ensure_login_has_a_value
      if login.nil?
        self.login = password unless password.blank?
      end
    end
  end
  