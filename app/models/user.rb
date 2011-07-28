class User < ActiveRecord::Base
	attr_reader :password
  has_many :sessions, :dependent => :destroy
	ENCRYPT = Digest::SHA256

	validates_uniqueness_of :email
	validates_format_of :password, :with => /^([\x20-\x7E]){4,16}$/,
		:message => "must be 4 to 16 characters",
		:unless => :password_is_not_being_updated?

	validates_confirmation_of :password
	before_save :scrub_email

	def self.find_by_email_and_password(email, password)
		user = self.find_by_email(email)
		if user and user.encrypted_password == ENCRYPT.hexdigest(password + user.salt)
			return user
		end
	end

	def password=(password)
    @password = password
    unless password_is_not_being_updated?
		  self.salt = [Array.new(9){rand(256).chr}.join].pack('m').chomp
		  self.encrypted_password = ENCRYPT.hexdigest(password + self.salt)
    end
	end

  private

	def scrub_email
		self.email.downcase!
	end

	def flush_passwords
		@password = @password_confirmation = nil
	end

	def password_is_not_being_updated?
		self.id and self.password.blank?
	end
end
