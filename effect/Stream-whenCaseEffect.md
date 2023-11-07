# whenCaseEffect

Returns the stream when the given partial function is defined for the given
effectful value, otherwise returns an empty stream.

To import and use `whenCaseEffect` from the "Stream" module:

```ts
import * as Stream from 'effect/Stream'

// Can be accessed like this
Stream.whenCaseEffect
```

**Signature**

```ts
export declare const whenCaseEffect: {
  <A, R2, E2, A2>(pf: (a: A) => Option.Option<Stream<R2, E2, A2>>): <R, E>(
    self: Effect.Effect<R, E, A>
  ) => Stream<R2 | R, E2 | E, A2>
  <R, E, A, R2, E2, A2>(self: Effect.Effect<R, E, A>, pf: (a: A) => Option.Option<Stream<R2, E2, A2>>): Stream<
    R | R2,
    E | E2,
    A2
  >
}
```
