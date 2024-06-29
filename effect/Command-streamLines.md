# streamLines

Runs the command returning the output as an stream of lines with the
specified encoding.

To import and use `streamLines` from the "Command" module:

```ts
import * as Command from "@effect/platform/Command"
// Can be accessed like this
Command.streamLines
```

**Signature**

```ts
export declare const streamLines: (command: Command) => Stream<string, PlatformError, CommandExecutor>
```
