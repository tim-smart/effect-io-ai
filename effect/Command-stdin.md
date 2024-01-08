# stdin

Specify the standard input stream for a command.

To import and use `stdin` from the "Command" module:

```ts
import * as Command from "@effect/platform/Command"
// Can be accessed like this
Command.stdin
```

**Signature**

```ts
export declare const stdin: {
  (stdin: CommandInput): (self: Command) => Command
  (self: Command, stdin: CommandInput): Command
}
```
