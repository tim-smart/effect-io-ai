# rejectEffect

Continue with the returned computation if the `PartialFunction` matches,
translating the successful match into a failure, otherwise continue with
our held value.

To import and use `rejectEffect` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.rejectEffect
```

**Signature**

```ts
export declare const rejectEffect: {
  <A, R1, E1>(pf: (a: A) => Option.Option<Effect<R1, E1, E1>>): <R, E>(
    self: Effect<R, E, A>
  ) => Effect<R1 | R, E1 | E, A>
  <R, E, A, R1, E1>(self: Effect<R, E, A>, pf: (a: A) => Option.Option<Effect<R1, E1, E1>>): Effect<R | R1, E | E1, A>
}
```
