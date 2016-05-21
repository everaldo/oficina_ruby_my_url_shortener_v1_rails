module ShortUrlHelper

  def show_short_url(short_url)
    short_url = "#{request.protocol}#{request.host_with_port}/#{short_url.code}"
    link_to short_url, short_url, target: :blank
  end

end
