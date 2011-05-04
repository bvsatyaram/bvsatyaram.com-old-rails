# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Bvsatyaram::Application.initialize!

# Use built in html parser for scrapi instead of Tidy gem
Scraper::Base.parser :html_parser

module ExternalLinks
  BLOG_URL     = "http://blog.bvsatyaram.com/"
  ARTICLES_URL = "http://articles.bvsatyaram.com/"
end
