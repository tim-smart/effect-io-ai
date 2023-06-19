# asRightError

This function maps the error value of an `Effect` value to a `Right` value
in an `Either` value.

Part of the `Effect` module, imported from `@effect/io/Effect`.

**Signature**

```ts
export declare const asRightError: <R, E, A>(self: Effect<R, E, A>) => Effect<R, Either.Either<never, E>, A>
```
