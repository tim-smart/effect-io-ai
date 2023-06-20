# asRightError

This function maps the error value of an `Effect` value to a `Right` value
in an `Either` value.

To import and use `asRightError` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.asRightError
```

**Signature**

```ts
export declare const asRightError: <R, E, A>(self: Effect<R, E, A>) => Effect<R, Either.Either<never, E>, A>
```
