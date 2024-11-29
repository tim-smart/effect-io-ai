# make

Create a command with the specified process name and an optional list of
arguments.

To import and use `make` from the "Command" module:

ts
import \* as Command from "@effect/platform/Command"
// Can be accessed like this
Command.make
undefined

**Signature**

```ts
export declare const make: (command: string, ...args: Array<string>) => Command
```
