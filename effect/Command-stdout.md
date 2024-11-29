# stdout

Specify the standard output stream for a command.

To import and use `stdout` from the "Command" module:

ts
import \* as Command from "@effect/platform/Command"
// Can be accessed like this
Command.stdout
undefined

**Signature**

```ts
export declare const stdout: {
  (stdout: Command.Output): (self: Command) => Command
  (self: Command, stdout: Command.Output): Command
}
```
