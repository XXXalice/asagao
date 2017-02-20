module LessonHelper
  def tiny_format(t)
    h(t).gsub(/\n/, "<br>").html_safe
  end
end