class CommentPolicy < ApplicationPolicy
  def create?
    user.present? && user.role?(:member) || user.role?(:admin)
  end

  def update?
    create?
  end

  def destroy?
    user.present? && (record.user = user || user.role?(:admin) || user.role?(:moderator))
  end
end