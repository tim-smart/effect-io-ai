# lines

Runs the command returning the output as an array of lines with the specified
encoding.

To import and use `lines` from the "Command" module:

ts
import \* as Command from "@effect/platform/Command"
// Can be accessed like this
Command.lines
undefined

**Signature**

```ts
export declare const lines: (
  command: Command,
  encoding?: string
) => Effect<Array<string>, PlatformError, CommandExecutor>
```
