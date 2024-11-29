# exitCode

Returns the exit code of the command after the process has completed
execution.

To import and use `exitCode` from the "Command" module:

ts
import \* as Command from "@effect/platform/Command"
// Can be accessed like this
Command.exitCode
undefined

**Signature**

```ts
export declare const exitCode: (self: Command) => Effect<ExitCode, PlatformError, CommandExecutor>
```
