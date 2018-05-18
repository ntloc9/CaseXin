module OplungsHelper
  def oplung_author
    user_signed_in? && current_user.id == oplungs.user_id
  end
end
