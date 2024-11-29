# randomWith

Retreives the `Random` service from the context and uses it to run the
specified workflow.

To import and use `randomWith` from the "Random" module:

ts
import \* as Random from "effect/Random"
// Can be accessed like this
Random.randomWith
undefined

**Signature**

```ts
export declare const randomWith: <A, E, R>(f: (random: Random) => Effect.Effect<A, E, R>) => Effect.Effect<A, E, R>
```
