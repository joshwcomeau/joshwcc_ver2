module ApplicationHelper
  def nice_date(date)
    date.strftime("%B #{date.day.ordinalize}, %Y")
  end
end
