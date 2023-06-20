# unright

Converts a `Effect<R, Either<B, E>, A>` into a `Effect<R, E, Either<B, A>>`.
The inverse of `right`.

To import and use `unright` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.unright
```

**Signature**

```ts
export declare const unright: <R, B, E, A>(self: Effect<R, Either.Either<B, E>, A>) => Effect<R, E, Either.Either<B, A>>
```
