defmodule Helpdesk.Repo do
  use AshPostgres.Repo,
    otp_app: :helpdesk

  def installed_extensions do
    # Add extensions here, and the migration generator will install them.
    ["ash-functions", "uuid-ossp", "citext"]
  end

  @doc """
  Used by migrations --tenants to list all tenants,
  create related schemas and migrates
  """

  def all_tenants do
    for org <- Helpdesk.Accounts.list_organizations!() do
      org.domain
    end
  end

  # Don't open unnecessary transactions
  # will default to `false` in 4.0
  def prefer_transaction? do
    false
  end

  def min_pg_version do
    %Version{major: 16, minor: 0, patch: 0}
  end
end
