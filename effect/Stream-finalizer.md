# finalizer

Creates a one-element stream that never fails and executes the finalizer
when it ends.

To import and use `finalizer` from the "Stream" module:

```ts
import * as Stream from 'effect/Stream'

// Can be accessed like this
Stream.finalizer
```

**Signature**

```ts
export declare const finalizer: <R, _>(finalizer: Effect.Effect<R, never, _>) => Stream<R, never, void>
```
