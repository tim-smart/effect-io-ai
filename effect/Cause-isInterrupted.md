# isInterrupted

Checks if a `Cause` contains an interruption.

**Details**

This function returns `true` if the `Cause` includes any fiber interruptions.

To import and use `isInterrupted` from the "Cause" module:

```ts
import * as Cause from "effect/Cause"
// Can be accessed like this
Cause.isInterrupted
```

**Signature**

```ts
export declare const isInterrupted: <E>(self: Cause<E>) => boolean
```
