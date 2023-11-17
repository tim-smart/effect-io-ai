# randomWith

Retreives the `Random` service from the context and uses it to run the
specified workflow.

To import and use `randomWith` from the "Random" module:

```ts
import * as Random from "effect/Random"
// Can be accessed like this
Random.randomWith
```

**Signature**

```ts
export declare const randomWith: <R, E, A>(f: (random: Random) => Effect.Effect<R, E, A>) => Effect.Effect<R, E, A>
```
