# filterEffect

Effectfully filters the elements emitted by this stream.

To import and use `filterEffect` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.filterEffect
```

**Signature**

```ts
export declare const filterEffect: {
  <A, E2, R2>(
    f: (a: NoInfer<A>) => Effect.Effect<boolean, E2, R2>
  ): <E, R>(self: Stream<A, E, R>) => Stream<A, E2 | E, R2 | R>
  <A, E, R, E2, R2>(self: Stream<A, E, R>, f: (a: A) => Effect.Effect<boolean, E2, R2>): Stream<A, E | E2, R | R2>
}
```
