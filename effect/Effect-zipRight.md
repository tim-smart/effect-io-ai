# zipRight

Runs two effects sequentially, returning the result of the second effect
while discarding the result of the first.

**When to Use**

Use `zipRight` when you need to execute two effects in sequence and only care
about the result of the second effect. The first effect will still execute
but its result will be ignored.

**Concurrency**

By default, the effects are run sequentially. To execute them concurrently,
use the `{ concurrent: true }` option.

To import and use `zipRight` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.zipRight
```

**Example**

```ts
import { Effect } from "effect"

const task1 = Effect.succeed(1).pipe(Effect.delay("200 millis"), Effect.tap(Effect.log("task1 done")))
const task2 = Effect.succeed("hello").pipe(Effect.delay("100 millis"), Effect.tap(Effect.log("task2 done")))

const program = Effect.zipRight(task1, task2)

Effect.runPromise(program).then(console.log)
// Output:
// timestamp=... level=INFO fiber=#0 message="task1 done"
// timestamp=... level=INFO fiber=#0 message="task2 done"
// hello
```

**Signature**

```ts
export declare const zipRight: {
  <A2, E2, R2>(
    that: Effect<A2, E2, R2>,
    options?: {
      readonly concurrent?: boolean | undefined
      readonly batching?: boolean | "inherit" | undefined
      readonly concurrentFinalizers?: boolean | undefined
    }
  ): <A, E, R>(self: Effect<A, E, R>) => Effect<A2, E2 | E, R2 | R>
  <A, E, R, A2, E2, R2>(
    self: Effect<A, E, R>,
    that: Effect<A2, E2, R2>,
    options?: {
      readonly concurrent?: boolean | undefined
      readonly batching?: boolean | "inherit" | undefined
      readonly concurrentFinalizers?: boolean | undefined
    }
  ): Effect<A2, E2 | E, R2 | R>
}
```
