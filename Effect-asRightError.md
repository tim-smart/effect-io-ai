# asRightError

This function maps the error value of an `Effect` value to a `Right` value
in an `Either` value.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.asRightError`.

### Signature

```typescript
export declare const asRightError: <R, E, A>(self: Effect<R, E, A>) => Effect<R, Either.Either<never, E>, A>
```
