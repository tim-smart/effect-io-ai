# leftWith

Performs the specified operation while "zoomed in" on the `Left` case of an
`Either`.

To import and use `leftWith` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.leftWith
```

**Signature**

```ts
export declare const leftWith: {
  <R, E, B, A, R1, E1, B1, A1>(
    f: (effect: Effect<R, Either.Either<E, B>, A>) => Effect<R1, Either.Either<E1, B1>, A1>
  ): (self: Effect<R, E, Either.Either<A, B>>) => Effect<R | R1, E | E1, Either.Either<A1, B1>>
  <R, E, B, A, R1, E1, B1, A1>(
    self: Effect<R, E, Either.Either<A, B>>,
    f: (effect: Effect<R, Either.Either<E, B>, A>) => Effect<R1, Either.Either<E1, B1>, A1>
  ): Effect<R | R1, E | E1, Either.Either<A1, B1>>
}
```