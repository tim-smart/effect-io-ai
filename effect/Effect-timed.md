Package: `effect`<br />
Module: `Effect`<br />

## Effect.timed

Executes an effect and measures the time it takes to complete.

**Details**

This function wraps the provided effect and returns a new effect that, when
executed, performs the original effect and calculates its execution duration.

The result of the new effect includes both the execution time (as a
`Duration`) and the original effect's result. This is useful for monitoring
performance or gaining insights into the time taken by specific operations.

The original effect's behavior (success, failure, or interruption) remains
unchanged, and the timing information is provided alongside the result in a
tuple.

**Example**

```ts
import { Duration, Effect } from "effect"

const task = Effect.gen(function*() {
  yield* Effect.sleep("2 seconds") // Simulates some work
  return "some result"
})

const timedTask = task.pipe(Effect.timed)

const program = Effect.gen(function*() {
  const [duration, result] = yield* timedTask
  console.log(`Task completed in ${Duration.toMillis(duration)} ms with result: ${result}`)
})

Effect.runFork(program)
// Output: Task completed in 2003.749125 ms with result: some result
```

**Signature**

```ts
declare const timed: <A, E, R>(self: Effect<A, E, R>) => Effect<[duration: Duration.Duration, result: A], E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L6945)

Since v2.0.0