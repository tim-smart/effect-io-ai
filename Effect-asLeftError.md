# asLeftError

This function maps the error value of an `Effect` value to a `Left` value
in an `Either` value.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.asLeftError`.

### Signature

```typescript
export declare const asLeftError: <R, E, A>(self: Effect<R, E, A>) => Effect<R, Either.Either<E, never>, A>
```
