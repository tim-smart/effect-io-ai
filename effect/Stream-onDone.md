# onDone

Runs the specified effect if this stream ends.

To import and use `onDone` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.onDone
```

**Signature**

```ts
export declare const onDone: {
  <X, R2>(cleanup: () => Effect.Effect<X, never, R2>): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E, R2 | R>
  <A, E, R, X, R2>(self: Stream<A, E, R>, cleanup: () => Effect.Effect<X, never, R2>): Stream<A, E, R | R2>
}
```
