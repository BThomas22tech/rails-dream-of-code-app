require 'rails_helper'

RSpec.describe 'Courses', type: :request do
  describe 'GET /courses' do
    it 'returns a 200 OK status' do
      # Send a GET request to the dashboard route
      get "/courses"

      # Check that the response status is 200 (OK)
      expect(response).to have_http_status(:ok)
    end

    describe 'GET /Courses' do
        it 'create student and course'do

          course = Course.create!(
            id:'1',
            coding_class_id: '1',
            trimester_id: '1',
            max_enrollment:'10'
          )
        student = Student.create!(name:'Brandon')

        expect(response.body).to include('1')
        expect(response.body).to include('Brandon')
    end
end
end
end