ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...

  private
  def login_as(name,admin = false)
    session[:member_id] = FactorGirl.create(:member,name: name,administrator: admin)
  end

  def logout
    session.delete(member_id)
  end

end
