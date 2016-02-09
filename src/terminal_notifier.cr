module TerminalNotifier
  VERSION = "0.0.1"
  BIN_PATH = "terminal-notifier"

  def self.notify(message : String)
    TerminalNotifier.execute({ message: message })
  end

  def self.notify(message : String, title : String)
    TerminalNotifier.execute({ message: message, title: title })
  end

  def self.execute(params : Hash)
    options = ""

    params.each do |key, value|
      options += "-#{key} #{value} "
    end

    `#{BIN_PATH} #{options}`
  end
end
