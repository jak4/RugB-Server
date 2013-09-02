class ApplicationController < ActionController::Base
  before_filter :cors_preflight_check
  after_filter :cors_set_access_control_headers

  private
    # in dev Mode allow cross site scripting
    def cors_set_access_control_headers
      if Rails.env == 'development'
        headers['Access-Control-Allow-Origin'] = '*'
        headers['Access-Control-Allow-Methods'] = 'POST, GET, OPTIONS'
        headers['Access-Control-Max-Age'] = "1728000"
      end
    end

    def cors_preflight_check
      if Rails.env == 'development'
        if request.method == :options
          #headers['Access-Control-Allow-Origin'] = 'http://localhost:4567 http://158.181.75.21:82'
          headers['Access-Control-Allow-Origin'] = '*'
          headers['Access-Control-Allow-Methods'] = 'POST, GET, OPTIONS'
          headers['Access-Control-Allow-Headers'] = 'X-Requested-With, X-Prototype-Version'
          headers['Access-Control-Max-Age'] = '1728000'
          render :text => '', :content_type => 'text/plain'
        end
      end
    end
end
