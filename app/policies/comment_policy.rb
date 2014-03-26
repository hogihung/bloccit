class CommentPolicy < ApplicationPolicy
  def create?
    user.present? && user.role?(:member) || user.role?(:admin)
  end

  def update?
    create?
  end

end