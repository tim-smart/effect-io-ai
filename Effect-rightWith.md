# rightWith

Performs the specified operation while "zoomed in" on the `Right` case of an
`Either`.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.rightWith`.

### Signature

```typescript
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
