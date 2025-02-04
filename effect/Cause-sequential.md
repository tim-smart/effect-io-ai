# sequential

Combines two `Cause`s sequentially.

**Details**

This function merges two errors that occurred in sequence, such as a main
error followed by a finalization error. It preserves both errors for complete
failure information.

To import and use `sequential` from the "Cause" module:

```ts
import * as Cause from "effect/Cause"
// Can be accessed like this
Cause.sequential
```

**Signature**

```ts
export declare const sequential: <E, E2>(left: Cause<E>, right: Cause<E2>) => Cause<E | E2>
```
