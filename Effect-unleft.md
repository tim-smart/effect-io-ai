# unleft

Converts a `Effect<R, Either<E, B>, A>` into a `Effect<R, E, Either<A, B>>`.
The inverse of `left`.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.unleft`.

### Signature

```typescript
export declare const unleft: <R, E, B, A>(self: Effect<R, Either.Either<E, B>, A>) => Effect<R, E, Either.Either<A, B>>
```
