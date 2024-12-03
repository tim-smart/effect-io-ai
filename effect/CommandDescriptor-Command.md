# Command

A `Command` represents a command in a command-line application.

Every command-line application will have at least one command: the
application itself. Other command-line applications may support multiple
commands.

To import and use `Command` from the "CommandDescriptor" module:

```ts
import * as CommandDescriptor from "@effect/cli/CommandDescriptor"
// Can be accessed like this
CommandDescriptor.Command
```
