require "./spec_helper"

describe TerminalNotifier do

  it "notifies" do
    TerminalNotifier.notify("Test")
  end

  it "sends custom message" do
    params = { title: "Office", message: "S01E03" }

    TerminalNotifier.execute(params)
  end
end
