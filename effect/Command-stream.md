# stream

Start running the command and return the output as a `Stream`.

To import and use `stream` from the "Command" module:

```ts
import * as Command from "@effect/platform/Command"
// Can be accessed like this
Command.stream
```

**Signature**

```ts
export declare const stream: (command: Command) => Stream<CommandExecutor, PlatformError, Uint8Array>
```
