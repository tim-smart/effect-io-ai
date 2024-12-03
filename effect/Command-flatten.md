# flatten

Flatten this command to a non-empty array of standard commands.

For a `StandardCommand`, this simply returns a `1` element array
For a `PipedCommand`, all commands in the pipe will be extracted out into
a array from left to right

To import and use `flatten` from the "Command" module:

```ts
import * as Command from "@effect/platform/Command"
// Can be accessed like this
Command.flatten
```

**Signature**

```ts
export declare const flatten: (self: Command) => NonEmptyReadonlyArray<StandardCommand>
```
