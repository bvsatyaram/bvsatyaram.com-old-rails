class ProjectsController < ApplicationController
  def index
    @page_title = "Projects"
    @page_heading = "Projects"
  end

  def downloads_count
    @project_title = params[:title]
    scrap_params = get_scrap_params(params[:title])
    @scrapped_text = QuickScrapper.scrap(scrap_params[:url], scrap_params[:css_selector])
    render :text => @scrapped_text.split[0]
  end

  ####################
  # Project Demo Pages
  ####################

  def lazy_styler
    @page_title = "Projects | Lazy Styler"
    @page_heading = "Lazy Styler"
    @page_subheading = "project demo"
  end

  private

  def get_scrap_params(title)
    scrap_params = {}
    scrap_params[:css_selector] = "html body div.container_12 div.prefix_1 div.info div.border div.meta div.who div.downloads"
    case title
    when "validate_email"
      scrap_params[:url] = "http://rubygems.org/gems/ValidateEmail"
    when "quick_scrapper"
      scrap_params[:url] = "http://rubygems.org/gems/quick_scrapper"
    when "truncateHTML"
      scrap_params[:url] = "http://rubygems.org/gems/truncateHTML"
    end

    return scrap_params
  end
end
