# zip

Combines two effects into a single effect, producing a tuple with the results of both effects.

The `zip` function executes the first effect (left) and then the second effect (right).
Once both effects succeed, their results are combined into a tuple.

**Concurrency**

By default, `zip` processes the effects sequentially. To execute the effects concurrently,
use the `{ concurrent: true }` option.

To import and use `zip` from the "Effect" module:

ts
import \* as Effect from "effect/Effect"
// Can be accessed like this
Effect.zip
undefined

**Example**

```ts
// Title: Combining Two Effects Sequentially
import { Effect } from "effect"

const task1 = Effect.succeed(1).pipe(Effect.delay("200 millis"), Effect.tap(Effect.log("task1 done")))
const task2 = Effect.succeed("hello").pipe(Effect.delay("100 millis"), Effect.tap(Effect.log("task2 done")))

// Combine the two effects together
//
//      ┌─── Effect<[number, string], never, never>
//      ▼
const program = Effect.zip(task1, task2)

Effect.runPromise(program).then(console.log)
// Output:
// timestamp=... level=INFO fiber=#0 message="task1 done"
// timestamp=... level=INFO fiber=#0 message="task2 done"
// [ 1, 'hello' ]
```

**Example**

```ts
// Title: Combining Two Effects Concurrently
import { Effect } from "effect"

const task1 = Effect.succeed(1).pipe(Effect.delay("200 millis"), Effect.tap(Effect.log("task1 done")))
const task2 = Effect.succeed("hello").pipe(Effect.delay("100 millis"), Effect.tap(Effect.log("task2 done")))

// Run both effects concurrently using the concurrent option
const program = Effect.zip(task1, task2, { concurrent: true })

Effect.runPromise(program).then(console.log)
// Output:
// timestamp=... level=INFO fiber=#0 message="task2 done"
// timestamp=... level=INFO fiber=#0 message="task1 done"
// [ 1, 'hello' ]
```

**Signature**

```ts
export declare const zip: {
  <A2, E2, R2>(
    that: Effect<A2, E2, R2>,
    options?:
      | {
          readonly concurrent?: boolean | undefined
          readonly batching?: boolean | "inherit" | undefined
          readonly concurrentFinalizers?: boolean | undefined
        }
      | undefined
  ): <A, E, R>(self: Effect<A, E, R>) => Effect<[A, A2], E2 | E, R2 | R>
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
  ): Effect<[A, A2], E | E2, R | R2>
}
```
