# asRight

This function maps the success value of an `Effect` value to a `Right` value
in an `Either` value.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.asRight`.

### Signature

```typescript
export declare const asRight: <R, E, A>(self: Effect<R, E, A>) => Effect<R, E, Either.Either<never, A>>
```
