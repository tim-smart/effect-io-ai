# zipWith

The `Effect.zipWith` function operates similarly to {@link zip} by combining
two effects. However, instead of returning a tuple, it allows you to apply a
function to the results of the combined effects, transforming them into a
single value

To import and use `zipWith` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.zipWith
```

**Example**

```ts
import { Effect } from "effect"

const task1 = Effect.succeed(1).pipe(Effect.delay("200 millis"), Effect.tap(Effect.log("task1 done")))
const task2 = Effect.succeed("hello").pipe(Effect.delay("100 millis"), Effect.tap(Effect.log("task2 done")))

const task3 = Effect.zipWith(task1, task2, (number, string) => number + string.length)

Effect.runPromise(task3).then(console.log)
// Output:
// timestamp=... level=INFO fiber=#3 message="task1 done"
// timestamp=... level=INFO fiber=#2 message="task2 done"
// 6
```

**Signature**

```ts
export declare const zipWith: {
  <A2, E2, R2, A, B>(
    that: Effect<A2, E2, R2>,
    f: (a: A, b: A2) => B,
    options?: {
      readonly concurrent?: boolean | undefined
      readonly batching?: boolean | "inherit" | undefined
      readonly concurrentFinalizers?: boolean | undefined
    }
  ): <E, R>(self: Effect<A, E, R>) => Effect<B, E2 | E, R2 | R>
  <A, E, R, A2, E2, R2, B>(
    self: Effect<A, E, R>,
    that: Effect<A2, E2, R2>,
    f: (a: A, b: A2) => B,
    options?: {
      readonly concurrent?: boolean | undefined
      readonly batching?: boolean | "inherit" | undefined
      readonly concurrentFinalizers?: boolean | undefined
    }
  ): Effect<B, E2 | E, R2 | R>
}
```
