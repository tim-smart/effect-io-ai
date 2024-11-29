# zipLeft

Runs two effects sequentially, returning the result of the first effect and
discarding the result of the second.

**When to Use**

Use `zipLeft` when you need to execute two effects in order but are only
interested in the result of the first one. The second effect will still
execute, but its result is ignored.

**Concurrency**

By default, the effects are run sequentially. To run them concurrently, use
the `{ concurrent: true }` option.

To import and use `zipLeft` from the "Effect" module:

ts
import \* as Effect from "effect/Effect"
// Can be accessed like this
Effect.zipLeft
undefined

**Example**

```ts
import { Effect } from "effect"

const task1 = Effect.succeed(1).pipe(Effect.delay("200 millis"), Effect.tap(Effect.log("task1 done")))
const task2 = Effect.succeed("hello").pipe(Effect.delay("100 millis"), Effect.tap(Effect.log("task2 done")))

const program = Effect.zipLeft(task1, task2)

Effect.runPromise(program).then(console.log)
// Output:
// timestamp=... level=INFO fiber=#0 message="task1 done"
// timestamp=... level=INFO fiber=#0 message="task2 done"
// 1
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
