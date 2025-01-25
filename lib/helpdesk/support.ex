defmodule Helpdesk.Support do
  use Ash.Domain,
    otp_app: :helpdesk

  resources do
    resource Helpdesk.Support.Ticket
    resource Helpdesk.Support.Representative
  end
end
