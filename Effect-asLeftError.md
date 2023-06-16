# asLeftError

This function maps the error value of an `Effect` value to a `Left` value
in an `Either` value.

Part of the `Effect` module, imported from `@effect/io/Effect`.

### Signature

```typescript
export declare const asLeftError: <R, E, A>(self: Effect<R, E, A>) => Effect<R, Either.Either<E, never>, A>
```
