class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true

      def editor? 
	  self.role == 'editor' 
	end
	
	def admin? 
	  self.role == 'Admin' 
	end

	def driver?
		self.role == 'Driver'
	end

	def warehouse?
		self.role == 'Warehouse'
	end
	
end