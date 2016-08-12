module TerminalNotifier
  VERSION = "0.2.0"
  BIN_PATH = "terminal-notifier"

  def self.notify(message       : String,
                  title         : String = nil,
                  subtitle      : String = nil,
                  app_icon      : String = nil,
                  content_image : String = nil)
    params = { message: message }
    params[:title]        = title         if title
    params[:subtitle]     = subtitle      if subtitle
    # Mavericks+
    params[:appIcon]      = app_icon      if app_icon
    params[:contentImage] = content_image if content_image

    execute(params)
  end

  def self.execute(params : NamedTuple)
    check_execute

    options = params.map { |k, v| "-#{k} #{v.inspect}" }.join(" ")
    `#{BIN_PATH} #{options}`
  end

  private def self.check_execute
    if !can_execute?
      raise "#{BIN_PATH} missing: run  brew install terminal-notifier"
    end
  end

  private def self.can_execute? : Bool
    `which #{BIN_PATH} >/dev/null 2>&1`
    $?.success?
  end
end
