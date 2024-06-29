# isInterrupted

Returns `true` if the specified cause contains an interruption, `false`
otherwise.

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
