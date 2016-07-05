module ApplicationHelper
  def page_name
    @page_name || "#{controller_name} #{action_name}"
  end

  def title(title = nil)
    if title.present?
      content_for :title, title
    else
      content_for?(:title) ? content_for(:title) : APP_CONFIG['default_title']
    end
  end
end
