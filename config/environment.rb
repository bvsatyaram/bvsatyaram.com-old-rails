# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Bvsatyaram::Application.initialize!

module ExternalLinks
  BLOG_URL     = "http://blog.bvsatyaram.com/"
  ARTICLES_URL = "http://articles.bvsatyaram.com/"
  PROJECTS_URL = "http://projects.bvsatyaram.com/"
end
