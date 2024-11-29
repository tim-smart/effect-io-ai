# isCommand

Returns `true` if the specified value is a `Command`, otherwise returns
`false`.

To import and use `isCommand` from the "Command" module:

ts
import \* as Command from "@effect/platform/Command"
// Can be accessed like this
Command.isCommand
undefined

**Signature**

```ts
export declare const isCommand: (u: unknown) => u is Command
```
