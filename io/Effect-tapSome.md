# tapSome

Returns an effect that effectfully "peeks" at the success of this effect.
If the partial function isn't defined at the input, the result is
equivalent to the original effect.

To import and use `tapSome` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.tapSome
```

**Signature**

```ts
export declare const tapSome: {
  <A, R1, E1, X>(pf: (a: A) => Option.Option<Effect<R1, E1, X>>): <R, E>(
    self: Effect<R, E, A>
  ) => Effect<R1 | R, E1 | E, A>
  <R, E, A, R1, E1, X>(self: Effect<R, E, A>, pf: (a: A) => Option.Option<Effect<R1, E1, X>>): Effect<R | R1, E | E1, A>
}
```
