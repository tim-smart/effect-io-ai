# allSuccesses

Evaluate and run each effect in the structure and collect the results,
discarding results from failed effects.

To import and use `allSuccesses` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.allSuccesses
```

**Signature**

```ts
export declare const allSuccesses: <R, E, A>(as: Iterable<Effect<R, E, A>>) => Effect<R, never, A[]>
```
