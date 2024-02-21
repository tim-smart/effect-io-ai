# ensuring

Executes the provided finalizer after this stream's finalizers run.

To import and use `ensuring` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.ensuring
```

**Signature**

```ts
export declare const ensuring: {
  <X, R2>(finalizer: Effect.Effect<X, never, R2>): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E, R2 | R>
  <A, E, R, X, R2>(self: Stream<A, E, R>, finalizer: Effect.Effect<X, never, R2>): Stream<A, E, R | R2>
}
```
