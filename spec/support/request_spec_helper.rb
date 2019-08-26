# spec/support/request_spec_helper
module request_spec_helper
  # Parse JSON response to ruby hash
  def json
    JSON.parse(response.body)
  end
end