# asLeft

This function maps the success value of an `Effect` value to a `Left` value
in an `Either` value.

To import and use `asLeft` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.asLeft
```

**Signature**

```ts
export declare const asLeft: <R, E, A>(self: Effect<R, E, A>) => Effect<R, E, Either.Either<A, never>>
```
