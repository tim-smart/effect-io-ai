# right

"Zooms in" on the value in the `Right` side of an `Either`, moving the
possibility that the value is a `Left` to the error channel.

To import and use `right` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.right
```

**Signature**

```ts
export declare const right: <R, E, A, B>(self: Effect<R, E, Either.Either<A, B>>) => Effect<R, Either.Either<A, E>, B>
```
