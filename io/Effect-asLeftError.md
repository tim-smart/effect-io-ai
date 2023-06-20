# asLeftError

This function maps the error value of an `Effect` value to a `Left` value
in an `Either` value.

To import and use `asLeftError` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.asLeftError
```

**Signature**

```ts
export declare const asLeftError: <R, E, A>(self: Effect<R, E, A>) => Effect<R, Either.Either<E, never>, A>
```
