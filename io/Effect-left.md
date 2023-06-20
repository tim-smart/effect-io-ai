# left

"Zooms in" on the value in the `Left` side of an `Either`, moving the
possibility that the value is a `Right` to the error channel.

To import and use `left` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.left
```

**Signature**

```ts
export declare const left: <R, E, A, B>(self: Effect<R, E, Either.Either<A, B>>) => Effect<R, Either.Either<E, B>, A>
```
