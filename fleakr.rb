require 'liquid'
require 'fleakr'

Fleakr.api_key = "a2ea3d277fda4ff53a351d09f1efb4e9"
Fleakr.shared_secret = "a327042e7118bd72"
Fleakr.auth_token = "766-393-248"
# or is it this?: Fleakr.auth_token = "auth-72157631885992216"

CACHED_IMAGES = {}

module Flickr
  def flickr_image(url)
    "<img alt='#{image_object(url).title}' src='#{image_object(url).large.url}'>"
  end

  def flickr_medium_image(url)
    "<img alt='#{image_object(url).title}' src='#{image_object(url).medium.url}'>"
  end

  private

  def image_object(url)
    CACHED_IMAGES[url] ||= Fleakr.resource_from_url(url)
  end
end

Liquid::Template.register_filter(Flickr)
