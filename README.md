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



#### Options
> Credits to [julienXX/terminal-notifier](https://github.com/julienXX/terminal-notifier#options)

At a minimum, you have to specify either the `message` , the `remove`
or the `list` option.

-------------------------------------------------------------------------------

`message`  **[required]**

The message body of the notification.

Note that if this option is omitted and data is piped to the application, that
data will be used instead.

-------------------------------------------------------------------------------

`title`

The title of the notification. This defaults to ‘Terminal’.

-------------------------------------------------------------------------------

`subtitle`

The subtitle of the notification.

-------------------------------------------------------------------------------

`sound`

The name of a sound to play when the notification appears. The names are listed
in Sound Preferences. Use 'default' for the default notification sound.

-------------------------------------------------------------------------------

`group`

Specifies the ‘group’ a notification belongs to. For any ‘group’ only _one_
notification will ever be shown, replacing previously posted notifications.

A notification can be explicitely removed with the `-remove` option, describe
below.

Examples are:

* The sender’s name to scope the notifications by tool.
* The sender’s process ID to scope the notifications by a unique process.
* The current working directory to scope notifications by project.

-------------------------------------------------------------------------------

`remove`  **[required]**

Removes a notification that was previously sent with the specified ‘group’ ID,
if one exists. If used with the special group "ALL", all message are removed.

-------------------------------------------------------------------------------

`list` **[required]**

Lists details about the specified ‘group’ ID. If used with the special group
"ALL", details about all currently active  messages are displayed.

The output of this command is tab-separated, which makes it easy to parse.

-------------------------------------------------------------------------------

`activate`

Specifies which application should be activated when the user clicks the
notification.

You can find the bundle identifier of an application in its `Info.plist` file
_inside_ the application bundle.

Examples are:

* `com.apple.Terminal` to activate Terminal.app
* `com.apple.Safari` to activate Safari.app

-------------------------------------------------------------------------------

`sender`

Specifying this will make it appear as if the notification was send by that
application instead, including using its icon.

Using this option fakes the sender application, so that the notification system
will launch that application when the notification is clicked. Because of this
it is important to note that you cannot combine this with options like
`execute`, `open`, and `activate` which depend on the sender of the
notification to be ‘terminal-notifier’ to perform its work.

For information on the `ID` see the `activate` option.

-------------------------------------------------------------------------------

`appIcon` **[10.9+ only]**

Specifies The PATH of an image to display instead of the application icon.

**WARNING: This option is subject to change since it relies on a private method.**

-------------------------------------------------------------------------------

`contentImage` **[10.9+ only]**

Specifies The PATH of an image to display attached inside the notification.

**WARNING: This option is subject to change since it relies on a private method.**

-------------------------------------------------------------------------------

`open`

Specifies a resource to be opened when the user clicks the notification. This
can be a web or file URL, or any custom URL scheme.

-------------------------------------------------------------------------------

`execute`

Specifies a shell command to run when the user clicks the notification.
