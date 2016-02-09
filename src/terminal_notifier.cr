module TerminalNotifier
  VERSION = "0.0.1"
  BIN_PATH = "terminal-notifier"

  def self.notify(message : String)
    `#{BIN_PATH} -message #{message}`
  end
end
