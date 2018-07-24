class RecordPolicy < ApplicationPolicy
  def index?
    true
  end
 
  def create?
    user.present?
  end
 
  def update?
    return true if user.present? && user == record.user
  end
 
  def destroy?
    return true if user.present? && user == record.user
  end
 
  private
 
    def record
      record
    end
end