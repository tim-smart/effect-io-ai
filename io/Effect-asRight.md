# asRight

This function maps the success value of an `Effect` value to a `Right` value
in an `Either` value.

To import and use `asRight` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.asRight
```

**Signature**

```ts
export declare const asRight: <R, E, A>(self: Effect<R, E, A>) => Effect<R, E, Either.Either<never, A>>
```
