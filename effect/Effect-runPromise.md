# runPromise

Runs an `Effect` workflow, returning a `Promise` which resolves with the
result of the workflow or rejects with an error.

To import and use `runPromise` from the "Effect" module:

```ts
import * as Effect from 'effect/Effect'

// Can be accessed like this
Effect.runPromise
```

**Signature**

```ts
export declare const runPromise: <E, A>(effect: Effect<never, E, A>) => Promise<A>
```
