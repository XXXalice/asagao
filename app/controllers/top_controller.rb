class TopController < ApplicationController
  def index
    @articles = Article.open.readable_for(current_member)
        .order(released_at: :desc).limit(5)
  end

  def about
  end

  def bad_request
    raise ActionController::ParameterMissing, ""
  end

  def internal_server_error
    raise Exception
  end
end
