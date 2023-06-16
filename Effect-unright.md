# unright

Converts a `Effect<R, Either<B, E>, A>` into a `Effect<R, E, Either<B, A>>`.
The inverse of `right`.

Part of the `Effect` module from the `@effect/io` package.

### Signature

```typescript
export declare const unright: <R, B, E, A>(self: Effect<R, Either.Either<B, E>, A>) => Effect<R, E, Either.Either<B, A>>
```
