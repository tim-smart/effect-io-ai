# stderr

Specify the standard error stream for a command.

To import and use `stderr` from the "Command" module:

```ts
import * as Command from "@effect/platform/Command"
// Can be accessed like this
Command.stderr
```

**Signature**

```ts
export declare const stderr: {
  (stderr: Command.Output): (self: Command) => Command
  (self: Command, stderr: Command.Output): Command
}
```
