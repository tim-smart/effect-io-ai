Package: `effect`<br />
Module: `Effect`<br />

## Effect.withConcurrency

Sets the concurrency level for parallel operations within an effect.

**Example**

```ts
import { Console, Effect } from "effect"

const task = (id: number) =>
  Effect.gen(function*() {
    yield* Console.log(`Task ${id} starting`)
    yield* Effect.sleep("100 millis")
    yield* Console.log(`Task ${id} completed`)
    return id
  })

// Run tasks with limited concurrency (max 2 at a time)
const program = Effect.gen(function*() {
  const tasks = [1, 2, 3, 4, 5].map(task)
  return yield* Effect.all(tasks, { concurrency: 2 })
}).pipe(
  Effect.withConcurrency(2)
)

Effect.runPromise(program).then(console.log)
// Tasks will run with max 2 concurrent operations
// [1, 2, 3, 4, 5]
```

**Signature**

```ts
declare const withConcurrency: { (concurrency: number | "unbounded"): <A, E, R>(self: Effect<A, E, R>) => Effect<A, E, R>; <A, E, R>(self: Effect<A, E, R>, concurrency: number | "unbounded"): Effect<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L6067)

Since v2.0.0