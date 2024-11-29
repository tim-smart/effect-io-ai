# randomWith

Retreives the `Random` service from the context and uses it to run the
specified workflow.

To import and use `randomWith` from the "Effect" module:

ts
import \* as Effect from "effect/Effect"
// Can be accessed like this
Effect.randomWith
undefined

**Signature**

```ts
export declare const randomWith: <A, E, R>(f: (random: Random.Random) => Effect<A, E, R>) => Effect<A, E, R>
```
