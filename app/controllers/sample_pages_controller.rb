class SamplePagesController < ApplicationController

  def sample
    @response = HTTParty.get("http://developer.echonest.com/api/v4/song/profile?api_key="+ENV['SPOT_CLIENT_ID']+"&bucket=audio_summary&track_id=" + params[:song][:spotify_uri])

    # response.body, response.code, response.message, response.headers.inspect
  end
end
