# allSuccesses

Evaluate and run each effect in the structure and collect the results,
discarding results from failed effects.

To import and use `allSuccesses` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.allSuccesses
```

**Signature**

```ts
export declare const allSuccesses: <R, E, A>(
  elements: Iterable<Effect<R, E, A>>,
  options?: { readonly concurrency?: Concurrency | undefined; readonly batching?: boolean | "inherit" | undefined }
) => Effect<R, never, A[]>
```
