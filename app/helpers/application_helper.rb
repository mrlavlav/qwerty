module ApplicationHelper
	def flash_class(level)
    case level.to_sym
      when :notice then "alert alert-success"
      when :info then "alert alert-info"
      when :alert then "alert alert-danger"
      when :warning then "alert alert-warning"
    end
  end

  # Returns the full title on a per-page basis.
  def full_title(page_title)
    base_title = "Messenger"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

  def active_page(active_page)
    @active == active_page ? "active" : ""
  end
    def current_user=(user)
    @current_user = user
end
end