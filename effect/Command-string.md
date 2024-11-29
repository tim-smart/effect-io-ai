# string

Runs the command returning the entire output as a string with the
specified encoding.

If an encoding is not specified, the encoding will default to `utf-8`.

To import and use `string` from the "Command" module:

ts
import \* as Command from "@effect/platform/Command"
// Can be accessed like this
Command.string
undefined

**Signature**

```ts
export declare const string: {
  (encoding?: string): (command: Command) => Effect<string, PlatformError, CommandExecutor>
  (command: Command, encoding?: string): Effect<string, PlatformError, CommandExecutor>
}
```
