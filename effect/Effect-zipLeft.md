# zipLeft

Sequentially run this effect with the specified effect, _discarding_ the result
of the second effect (`that`) in the chain.

`{ concurrent: true }` can be passed to the options to make it a concurrent execution
of both effects instead of sequential.

To import and use `zipLeft` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.zipLeft
```

**Example**

```ts
import { Effect } from "effect"

const effect = Effect.succeed("a message").pipe(Effect.zipLeft(Effect.succeed(42)))

assert.deepStrictEqual(Effect.runSync(effect), "a message")
```

**Signature**

```ts
export declare const zipLeft: {
  <A2, E2, R2>(
    that: Effect<A2, E2, R2>,
    options?:
      | {
          readonly concurrent?: boolean | undefined
          readonly batching?: boolean | "inherit" | undefined
          readonly concurrentFinalizers?: boolean | undefined
        }
      | undefined
  ): <A, E, R>(self: Effect<A, E, R>) => Effect<A, E2 | E, R2 | R>
  <A, E, R, A2, E2, R2>(
    self: Effect<A, E, R>,
    that: Effect<A2, E2, R2>,
    options?:
      | {
          readonly concurrent?: boolean | undefined
          readonly batching?: boolean | "inherit" | undefined
          readonly concurrentFinalizers?: boolean | undefined
        }
      | undefined
  ): Effect<A, E | E2, R | R2>
}
```
