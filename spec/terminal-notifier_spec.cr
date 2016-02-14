require "./spec_helper"

describe TerminalNotifier do
  it "notifies with message" do
    TerminalNotifier.notify("Michael")
  end

  it "notifies with message and title" do
    TerminalNotifier.notify("Michael", "Scott")
  end

  it "sends custom message" do
    params = { title: "Office", message: "S01E03" }

    TerminalNotifier.execute(params)
  end

  it "sends composed notification" do
    params = { title: "The Office", message: "Episode S01E03" }

    TerminalNotifier.execute(params)
  end

  it "sends notification with sounds" do
    params = { title: "The Office", message: "Thats what she said", sound: "Purr" }

    TerminalNotifier.execute(params)
  end
end
