# filterMapEffect

Performs an effectful filter and map in a single step.

To import and use `filterMapEffect` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.filterMapEffect
```

**Signature**

```ts
export declare const filterMapEffect: {
  <A, R2, E2, A2>(
    pf: (a: A) => Option.Option<Effect.Effect<A2, E2, R2>>
  ): <R, E>(self: Stream<A, E, R>) => Stream<A2, E2 | E, R2 | R>
  <R, E, A, R2, E2, A2>(
    self: Stream<A, E, R>,
    pf: (a: A) => Option.Option<Effect.Effect<A2, E2, R2>>
  ): Stream<A2, E | E2, R | R2>
}
```
