require 'rails_helper'

RSpec.describe "Mentors", type: :request do
    describe "GET /mentors" do
        context "mentor exist" do
        before do
        @mentor =Mentor.create!(
                first_name:"John",
                last_name:"Sam",
                email:"1234@gmail.com",
                max_concurrent_students:"10",
            )
        end


    it 'returns a page containing a mentor' do
        get '/mentors'
        expect("#{@mentor.first_name} #{@mentor.last_name} #{@mentor.email}").to eq('John Sam 1234@gmail.com')
    end
    end
end
end