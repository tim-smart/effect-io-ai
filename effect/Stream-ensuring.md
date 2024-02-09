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
  <R2, _>(finalizer: Effect.Effect<_, never, R2>): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E, R2 | R>
  <R, E, A, R2, _>(self: Stream<A, E, R>, finalizer: Effect.Effect<_, never, R2>): Stream<A, E, R | R2>
}
```
