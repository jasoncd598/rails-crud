class UserInformation < ApplicationRecord

    STRING_REGEX = /\A[a-zA-Z]+\z/
    INT_REGEX = /\A\d+\z/
    MESSAGE = "only allows letters"

    validates :name,         presence: true,   format: { with: STRING_REGEX, message: MESSAGE }
    validates :first_name,   presence: true,   format: { with: STRING_REGEX, message: MESSAGE }
    validates :last_name,    presence: true,   format: { with: STRING_REGEX, message: MESSAGE }
    validates :phone_number, presence: true,   format: { with: INT_REGEX }

end
