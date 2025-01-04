# finalizersMask

Applies a custom execution strategy to finalizers within a scoped workflow.

**Details**

This function allows you to control how finalizers are executed in a scope by
applying a specified `ExecutionStrategy`. The `strategy` can dictate whether
finalizers run (e.g., sequentially or in parallel).

Additionally, the function provides a `restore` operation, which ensures that
the effect passed to it is executed under the default execution strategy.

To import and use `finalizersMask` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.finalizersMask
```

**Signature**

```ts
export declare const finalizersMask: (
  strategy: ExecutionStrategy
) => <A, E, R>(
  self: (restore: <A1, E1, R1>(self: Effect<A1, E1, R1>) => Effect<A1, E1, R1>) => Effect<A, E, R>
) => Effect<A, E, R>
```
