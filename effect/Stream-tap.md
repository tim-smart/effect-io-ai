# tap

Adds an effect to consumption of every element of the stream.

To import and use `tap` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.tap
```

**Signature**

```ts
export declare const tap: {
  <A, R2, E2, _>(
    f: (a: NoInfer<A>) => Effect.Effect<_, E2, R2>
  ): <R, E>(self: Stream<A, E, R>) => Stream<A, E2 | E, R2 | R>
  <R, E, A, R2, E2, _>(self: Stream<A, E, R>, f: (a: NoInfer<A>) => Effect.Effect<_, E2, R2>): Stream<A, E | E2, R | R2>
}
```
