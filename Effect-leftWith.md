# leftWith

Performs the specified operation while "zoomed in" on the `Left` case of an
`Either`.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.leftWith`.

### Signature

```typescript
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
