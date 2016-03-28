module Gapp
  class API < Grape::API
    get :hello do
      { hello: 'grape' }
    end

    get 'status' do
      cookies[:status_count] ||= 0
      cookies[:status_count] = cookies[:status_count].to_i + 1
      { status_count: cookies[:status_count] }
    end
  end
end
