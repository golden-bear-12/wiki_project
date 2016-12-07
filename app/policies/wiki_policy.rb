class WikiPolicy < ApplicationPolicy
  def update?
    user.admin? || record.user == user || !record.private?
  end
  def destroy?
    user.admin? || record.user == user
  end
end
