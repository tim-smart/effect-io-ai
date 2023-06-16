# absolveWith

This function takes a mapping function f that maps over `Effect` value
and returns `Either` and returns a new function that submerges the error
case of an `Either` value into an `Effect` value.
It is the inverse operation of `either`.

If the `Either` value is a `Right` value, then the `Effect` value will
succeed with the value contained in the `Right`. If the `Either` value
is a `Left` value, then the `Effect` value will fail with the error
contained in the `Left`.

Part of the `Effect` module, imported from `@effect/io/Effect`.

### Signature

```typescript
export declare const absolveWith: {
  <A, E2, A2>(f: (a: A) => Either.Either<E2, A2>): <R, E>(self: Effect<R, E, A>) => Effect<R, E2 | E, A2>
  <R, E, E2, A, A2>(self: Effect<R, E, A>, f: (a: A) => Either.Either<E2, A2>): Effect<R, E | E2, A2>
}
```
