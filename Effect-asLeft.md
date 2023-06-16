# asLeft

This function maps the success value of an `Effect` value to a `Left` value
in an `Either` value.

Part of the `Effect` module, imported from `@effect/io/Effect`.

**Signature**

```ts
export declare const asLeft: <R, E, A>(self: Effect<R, E, A>) => Effect<R, E, Either.Either<A, never>>
```
