require "./spec_helper"

describe TerminalNotifier do
  it "notifies" do
    TerminalNotifier.notify("Test")
  end
end
