# forkAllDiscard

Returns an effect that forks all of the specified values, and returns a
composite fiber that produces unit. This version is faster than `forkAll`
in cases where the results of the forked fibers are not needed.

To import and use `forkAllDiscard` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.forkAllDiscard
```

**Signature**

```ts
export declare const forkAllDiscard: <R, E, A>(effects: Iterable<Effect<R, E, A>>) => Effect<R, never, void>
```
