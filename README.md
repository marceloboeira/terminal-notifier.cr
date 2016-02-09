# TerminalNotifier
> Binds for terminal-notifier for Crystal Lang

## Installation

Make sure you have `terminal-notifier` installed.

`brew install terminal-notifier` or
`gem install terminal-notifier`

then add this to your application's `shard.yml`:

```yaml
dependencies:
  terminal_notifier:
    github: marceloboeira/terminal_notifier.cr
```

## Usage

```crystal
require "terminal_notifier"

TerminalNotifier.notify("Hello World!")
```
