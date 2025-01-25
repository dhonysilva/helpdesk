defmodule Helpdesk.Support do
  use Ash.Domain,
    otp_app: :helpdesk

  alias Helpdesk.Support.Ticket

  resources do
    resource Ticket do
      define :open_ticket, action: :open
      define :list_tickets, action: :read
      define :update_ticket, action: :update
      define :destroy_ticket, action: :destroy
    end

    resource Helpdesk.Support.Representative
  end
end
