# stdin

Specify the standard input stream for a command.

To import and use `stdin` from the "Command" module:

ts
import \* as Command from "@effect/platform/Command"
// Can be accessed like this
Command.stdin
undefined

**Signature**

```ts
export declare const stdin: {
  (stdin: Command.Input): (self: Command) => Command
  (self: Command, stdin: Command.Input): Command
}
```
