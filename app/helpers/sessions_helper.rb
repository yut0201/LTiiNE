module SessionsHelper
  def current_user
    # current_userが未定義の場合、find_byで検索
    @current_user ||= User.find_by(id: session[:id])
  end

  def logged_in?
    # 値は格納されているか？
    current_user.present?
  end

  def log_in(user)
    session[:id] = user.id
  end

  def log_out
    reset_session
    @current_user = nil
  end
end
