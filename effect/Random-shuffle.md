# shuffle

Uses the pseudo-random number generator to shuffle the specified iterable.

To import and use `shuffle` from the "Random" module:

ts
import \* as Random from "effect/Random"
// Can be accessed like this
Random.shuffle
undefined

**Signature**

```ts
export declare const shuffle: <A>(elements: Iterable<A>) => Effect.Effect<Chunk.Chunk<A>>
```
