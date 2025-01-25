defmodule HelpdeskWeb.Tickets.CreateLiveTest do
  use HelpdeskWeb.ConnCase

  describe "Create Ticket" do
    test "User should see open ticket form when visiting /tickets/open", %{conn, conn} do
      # 1. Go to /tickets/open
      {:ok, view, html} = live(conn, "/tickets/open")

      # 2. See the "Open Ticket" text on the page
      assert html =~ "Open Ticket"

      # 3. See Subject input on the page
      assert html =~ "name\"form[subject]\""

      # 4. See Tenant lists on the page
      assert html =~ "name=\"form[tenant]\""

      # 5. See Submit button on the page
      assert html =~ "Open"
    end

    test "User should be see erros while trying to submit invalid data", %{conn, conn} do
      # 1. Create an organisation
      # 2. Go to /tickets/open page
      # 3. Submit the form without filling subject
      # 4. Expect to see error message on the page
    end

    test "User should successfully open a ticket with valid data", %{conn, conn} do
      # 1. Create an organisation
      # 2. Go to /tickets/open page
      # 3. Fill the subject and submit the form
      # 4. Expect to see error message on the page
      # 5. Expect data to be stored in the right tenant in the DB
    end
  end
end
