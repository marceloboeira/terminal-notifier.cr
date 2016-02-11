# TerminalNotifier
> Binds for terminal-notifier for Crystal Lang

## Installation

Make sure you have `terminal-notifier` installed.

`brew install terminal-notifier` or
`gem install terminal-notifier`

then add this to your application's `shard.yml`:

```yaml
dependencies:
  terminal-notifier:
    github: marceloboeira/terminal-notifier
```

## Usage

```crystal
require "terminal_notifier"

TerminalNotifier.notify("Hello World!") # => Notifies with the Hello World message
TerminalNotifier.notify("Hello World!", "Hello Title") # => Notifies with the Hello World message

TerminalNotifier.execute({ title: "My nice title" }) # => Notifies with custom params
```
