# rightWith

Performs the specified operation while "zoomed in" on the `Right` case of an
`Either`.

To import and use `rightWith` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.rightWith
```

**Signature**

```ts
export declare const rightWith: {
  <R, E, A, A1, B, B1, R1, E1>(
    f: (effect: Effect<R, Either.Either<A, E>, B>) => Effect<R1, Either.Either<A1, E1>, B1>
  ): (self: Effect<R, E, Either.Either<A, B>>) => Effect<R | R1, E | E1, Either.Either<A1, B1>>
  <R, E, A, A1, B, B1, R1, E1>(
    self: Effect<R, E, Either.Either<A, B>>,
    f: (effect: Effect<R, Either.Either<A, E>, B>) => Effect<R1, Either.Either<A1, E1>, B1>
  ): Effect<R | R1, E | E1, Either.Either<A1, B1>>
}
```
