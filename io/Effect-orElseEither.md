# orElseEither

Returns an effect that will produce the value of this effect, unless it
fails, in which case, it will produce the value of the specified effect.

To import and use `orElseEither` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.orElseEither
```

**Signature**

```ts
export declare const orElseEither: {
  <R2, E2, A2>(that: LazyArg<Effect<R2, E2, A2>>): <R, E, A>(
    self: Effect<R, E, A>
  ) => Effect<R2 | R, E2, Either.Either<A, A2>>
  <R, E, A, R2, E2, A2>(self: Effect<R, E, A>, that: LazyArg<Effect<R2, E2, A2>>): Effect<
    R | R2,
    E2,
    Either.Either<A, A2>
  >
}
```
