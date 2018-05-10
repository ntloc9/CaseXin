module CasesHelper
  def case_author
    user_signed_in? && current_user.id == cases.user_id
  end
end
