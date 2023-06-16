# left

"Zooms in" on the value in the `Left` side of an `Either`, moving the
possibility that the value is a `Right` to the error channel.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.left`.

### Signature

```typescript
export declare const left: <R, E, A, B>(self: Effect<R, E, Either.Either<A, B>>) => Effect<R, Either.Either<E, B>, A>
```
