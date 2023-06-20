# absorbWith

This function takes a mapping function `f` and returns a new function
that transforms an `Effect` value that may fail with a defect into a new
`Effect` value that may fail with an unknown error.

If the original `Effect` value fails with a known error, then the
mapping function `f` will be applied to the error to convert it to an
unknown structure.

The resulting `Effect` value will have the same context and success
type as the original `Effect` value, but it will have a more general
error type that allows it to fail with any type of error.

To import and use `absorbWith` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.absorbWith
```

**Signature**

```ts
export declare const absorbWith: {
  <E>(f: (error: E) => unknown): <R, A>(self: Effect<R, E, A>) => Effect<R, unknown, A>
  <R, E, A>(self: Effect<R, E, A>, f: (error: E) => unknown): Effect<R, unknown, A>
}
```
