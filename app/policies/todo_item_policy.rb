class TodoItemPolicy < ApplicationPolicy
  alias_method :lagoon, :record

  def index?
    true
  end

  def show?
    true
  end

  def create?
    true
  end

  def update?
    true
  end

  def destroy?
    true
  end

  def report?
    true
  end

  def download_excel?
    true
  end
end
