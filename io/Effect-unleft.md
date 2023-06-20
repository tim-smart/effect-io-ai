# unleft

Converts a `Effect<R, Either<E, B>, A>` into a `Effect<R, E, Either<A, B>>`.
The inverse of `left`.

To import and use `unleft` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.unleft
```

**Signature**

```ts
export declare const unleft: <R, E, B, A>(self: Effect<R, Either.Either<E, B>, A>) => Effect<R, E, Either.Either<A, B>>
```
