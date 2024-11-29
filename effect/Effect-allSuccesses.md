# allSuccesses

Evaluate and run each effect in the structure and collect the results,
discarding results from failed effects.

To import and use `allSuccesses` from the "Effect" module:

ts
import \* as Effect from "effect/Effect"
// Can be accessed like this
Effect.allSuccesses
undefined

**Signature**

```ts
export declare const allSuccesses: <X extends Effect<any, any, any>>(
  elements: Iterable<X>,
  options?:
    | {
        readonly concurrency?: Concurrency | undefined
        readonly batching?: boolean | "inherit" | undefined
        readonly concurrentFinalizers?: boolean | undefined
      }
    | undefined
) => Effect<Array<Effect.Success<X>>, never, Effect.Context<X>>
```
