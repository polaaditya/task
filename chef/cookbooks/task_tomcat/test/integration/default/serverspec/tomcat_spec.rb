require 'serverspec'

# Required by serverspec
set :backend, :exec

describe "tomcat sample app" do
  it "is listening on port 8080" do
    expect(port(8080)).to be_listening
  end

  it "has a running service of tomcat" do
    expect(service("tomcat")).to be_running
  end
end