# workingDirectory

Set the working directory that will be used when this command will be run.

For piped commands, the working directory of each command will be set to the
specified working directory.

To import and use `workingDirectory` from the "Command" module:

```ts
import * as Command from "@effect/platform/Command"
// Can be accessed like this
Command.workingDirectory
```

**Signature**

```ts
export declare const workingDirectory: {
  (cwd: string): (self: Command) => Command
  (self: Command, cwd: string): Command
}
```
