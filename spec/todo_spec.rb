require File.expand_path '../spec_helper.rb', __FILE__
describe "Blog" do

    it "renders homepage with success" do
        get("/")
        expect(last_response).to be_ok
        expect(last_response.body).to eq('Hello World')
    end
end
