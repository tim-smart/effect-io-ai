# tapEither

Returns an effect that effectfully "peeks" at the result of this effect.

Part of the `Effect` module, imported from `@effect/io/Effect`.

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
