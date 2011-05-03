module ProjectsHelper
  def download_count_info(title)
    content_tag 'div', :class => 'download_count' do
      content_tag('span', image_tag('icons/count_loading.gif'), :class => 'count', :id => (title + '_downloads_count')) + " downloads so far!!"
    end
  end
end
