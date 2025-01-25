defmodule Helpdesk.Accounts do
  use Ash.Domain

  alias Helpdesk.Accounts.Organization

  resources do
    resource Organization do
      define :create_organization, action: :create
      define :list_organizations, action: :read
      define :update_organization, action: :update
      define :destroy_organization, action: :destroy
      define :get_organization_by_id, args: [:id], action: :by_id
      define :get_organization_by_domain, args: [:domain], action: :by_domain
    end
  end
end
