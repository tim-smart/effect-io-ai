# parallel

Combines two `Cause`s in parallel.

**Details**

This function merges two errors that occurred simultaneously. Instead of
discarding one error, both are retained, allowing for richer error reporting
and debugging.

To import and use `parallel` from the "Cause" module:

```ts
import * as Cause from "effect/Cause"
// Can be accessed like this
Cause.parallel
```

**Signature**

```ts
export declare const parallel: <E, E2>(left: Cause<E>, right: Cause<E2>) => Cause<E | E2>
```
