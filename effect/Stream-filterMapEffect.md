# filterMapEffect

Performs an effectful filter and map in a single step.

To import and use `filterMapEffect` from the "Stream" module:

```ts
import * as Stream from 'effect/Stream'

// Can be accessed like this
Stream.filterMapEffect
```

**Signature**

```ts
export declare const filterMapEffect: {
  <A, R2, E2, A2>(pf: (a: A) => Option.Option<Effect.Effect<R2, E2, A2>>): <R, E>(
    self: Stream<R, E, A>
  ) => Stream<R2 | R, E2 | E, A2>
  <R, E, A, R2, E2, A2>(self: Stream<R, E, A>, pf: (a: A) => Option.Option<Effect.Effect<R2, E2, A2>>): Stream<
    R | R2,
    E | E2,
    A2
  >
}
```
