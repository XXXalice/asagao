module IntegrationTestHelper
  private
  def login_as(name, admin = false)
    member = FactoryGirl.create(:member, name: name, administrator: admin)
    post "/session", name: member.name, password: "password"
  end

  def logout
    delete "/session"
  end
end