# start

Start running the command and return a handle to the running process.

To import and use `start` from the "Command" module:

```ts
import * as Command from "@effect/platform/Command"
// Can be accessed like this
Command.start
```

**Signature**

```ts
export declare const start: (command: Command) => Effect<Process, PlatformError, CommandExecutor | Scope>
```
