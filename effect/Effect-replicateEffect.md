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
    }
  ): <R, E, A>(self: Effect<R, E, A>) => Effect<R, E, A[]>
  (
    n: number,
    options: {
      readonly concurrency?: Concurrency | undefined
      readonly batching?: boolean | "inherit" | undefined
      readonly discard: true
    }
  ): <R, E, A>(self: Effect<R, E, A>) => Effect<R, E, void>
  <R, E, A>(
    self: Effect<R, E, A>,
    n: number,
    options?: {
      readonly concurrency?: Concurrency | undefined
      readonly batching?: boolean | "inherit" | undefined
      readonly discard?: false | undefined
    }
  ): Effect<R, E, A[]>
  <R, E, A>(
    self: Effect<R, E, A>,
    n: number,
    options: {
      readonly concurrency?: Concurrency | undefined
      readonly batching?: boolean | "inherit" | undefined
      readonly discard: true
    }
  ): Effect<R, E, void>
}
```
