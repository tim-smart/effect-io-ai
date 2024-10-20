# replicateEffect

Performs this effect the specified number of times and collects the
results.

To import and use `replicateEffect` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.replicateEffect
```

**Signature**

```ts
export declare const replicateEffect: {
  (
    n: number,
    options?: {
      readonly concurrency?: Concurrency | undefined
      readonly batching?: boolean | "inherit" | undefined
      readonly discard?: false | undefined
      readonly concurrentFinalizers?: boolean | undefined
    }
  ): <A, E, R>(self: Effect<A, E, R>) => Effect<Array<A>, E, R>
  (
    n: number,
    options: {
      readonly concurrency?: Concurrency | undefined
      readonly batching?: boolean | "inherit" | undefined
      readonly discard: true
      readonly concurrentFinalizers?: boolean | undefined
    }
  ): <A, E, R>(self: Effect<A, E, R>) => Effect<void, E, R>
  <A, E, R>(
    self: Effect<A, E, R>,
    n: number,
    options?: {
      readonly concurrency?: Concurrency | undefined
      readonly batching?: boolean | "inherit" | undefined
      readonly discard?: false | undefined
      readonly concurrentFinalizers?: boolean | undefined
    }
  ): Effect<Array<A>, E, R>
  <A, E, R>(
    self: Effect<A, E, R>,
    n: number,
    options: {
      readonly concurrency?: Concurrency | undefined
      readonly batching?: boolean | "inherit" | undefined
      readonly discard: true
      readonly concurrentFinalizers?: boolean | undefined
    }
  ): Effect<void, E, R>
}
```
