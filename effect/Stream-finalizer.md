# finalizer

Creates a one-element stream that never fails and executes the finalizer
when it ends.

To import and use `finalizer` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.finalizer
```

**Signature**

```ts
export declare const finalizer: <R, X>(finalizer: Effect.Effect<X, never, R>) => Stream<void, never, R>
```
