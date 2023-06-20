# someWith

Perfoms the specified operation while "zoomed in" on the `Some` case of an
`Option`.

To import and use `someWith` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.someWith
```

**Signature**

```ts
export declare const someWith: {
  <R, E, A, R1, E1, A1>(f: (effect: Effect<R, Option.Option<E>, A>) => Effect<R1, Option.Option<E1>, A1>): (
    self: Effect<R, E, Option.Option<A>>
  ) => Effect<R | R1, E | E1, Option.Option<A1>>
  <R, E, A, R1, E1, A1>(
    self: Effect<R, E, Option.Option<A>>,
    f: (effect: Effect<R, Option.Option<E>, A>) => Effect<R1, Option.Option<E1>, A1>
  ): Effect<R | R1, E | E1, Option.Option<A1>>
}
```
