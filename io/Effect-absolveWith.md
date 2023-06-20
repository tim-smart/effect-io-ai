# absolveWith

This function takes a mapping function f that maps over `Effect` value
and returns `Either` and returns a new function that submerges the error
case of an `Either` value into an `Effect` value.
It is the inverse operation of `either`.

If the `Either` value is a `Right` value, then the `Effect` value will
succeed with the value contained in the `Right`. If the `Either` value
is a `Left` value, then the `Effect` value will fail with the error
contained in the `Left`.

To import and use `absolveWith` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.absolveWith
```

**Signature**

```ts
export declare const absolveWith: {
  <A, E2, A2>(f: (a: A) => Either.Either<E2, A2>): <R, E>(self: Effect<R, E, A>) => Effect<R, E2 | E, A2>
  <R, E, E2, A, A2>(self: Effect<R, E, A>, f: (a: A) => Either.Either<E2, A2>): Effect<R, E | E2, A2>
}
```
