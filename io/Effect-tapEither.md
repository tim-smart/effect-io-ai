# tapEither

Returns an effect that effectfully "peeks" at the result of this effect.

To import and use `tapEither` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.tapEither
```

**Signature**

```ts
export declare const tapEither: {
  <E, A, R2, E2, X>(f: (either: Either.Either<E, A>) => Effect<R2, E2, X>): <R>(
    self: Effect<R, E, A>
  ) => Effect<R2 | R, E | E2, A>
  <R, E, A, R2, E2, X>(self: Effect<R, E, A>, f: (either: Either.Either<E, A>) => Effect<R2, E2, X>): Effect<
    R | R2,
    E | E2,
    A
  >
}
```
