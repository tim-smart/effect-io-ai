# raceAwait

Returns an effect that races this effect with the specified effect,
returning the first successful `A` from the faster side. If one effect
succeeds, the other will be interrupted. If neither succeeds, then the
effect will fail with some error.

To import and use `raceAwait` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.raceAwait
```

**Signature**

```ts
export declare const raceAwait: {
  <R2, E2, A2>(that: Effect<R2, E2, A2>): <R, E, A>(self: Effect<R, E, A>) => Effect<R2 | R, E2 | E, A2 | A>
  <R, E, A, R2, E2, A2>(self: Effect<R, E, A>, that: Effect<R2, E2, A2>): Effect<R | R2, E | E2, A | A2>
}
```
