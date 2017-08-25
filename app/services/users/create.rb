module Users
  class Create
    def call(name:, email:, password:)
      User.where(email: email).first_or_create!(password: password, password_confirmation: password, name: name)
    end
  end
end
