# filterMapWhileEffect

Effectfully transforms all elements of the stream for as long as the
specified partial function is defined.

To import and use `filterMapWhileEffect` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.filterMapWhileEffect
```

**Signature**

```ts
export declare const filterMapWhileEffect: {
  <A, R2, E2, A2>(
    pf: (a: A) => Option.Option<Effect.Effect<A2, E2, R2>>
  ): <R, E>(self: Stream<A, E, R>) => Stream<A2, E2 | E, R2 | R>
  <R, E, A, R2, E2, A2>(
    self: Stream<A, E, R>,
    pf: (a: A) => Option.Option<Effect.Effect<A2, E2, R2>>
  ): Stream<A2, E | E2, R | R2>
}
```
