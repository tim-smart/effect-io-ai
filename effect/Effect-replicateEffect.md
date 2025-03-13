Package: `effect`<br />
Module: `Effect`<br />

## Effect.replicateEffect

Performs this effect the specified number of times and collects the results.

**Details**

This function repeats an effect multiple times and collects the results into
an array. You specify how many times to execute the effect, and it runs that
many times, either in sequence or concurrently depending on the provided
options.

**Options**

If the `discard` option is set to `true`, the intermediate results are not
collected, and the final result of the operation is `void`.

The function also allows you to customize how the effects are handled by
specifying options such as concurrency, batching, and how finalizers behave.
These options provide flexibility in running the effects concurrently or
adjusting other execution details.

**Example**

```ts
import { Console, Effect } from "effect"

let counter = 0

const task = Effect.sync(() => ++counter).pipe(
  Effect.tap(() => Console.log(`Task completed`))
)

const program = Effect.gen(function*() {
  // Replicate the task 3 times and collect the results
  const results = yield* Effect.replicateEffect(task, 3)
  yield* Console.log(`Results: ${results.join(", ")}`)
})

// Effect.runFork(program)
// Output:
// Task completed
// Task completed
// Task completed
// Results: 1, 2, 3
```

**Signature**

```ts
declare const replicateEffect: { (n: number, options?: { readonly concurrency?: Concurrency | undefined; readonly batching?: boolean | "inherit" | undefined; readonly discard?: false | undefined; readonly concurrentFinalizers?: boolean | undefined; }): <A, E, R>(self: Effect<A, E, R>) => Effect<Array<A>, E, R>; (n: number, options: { readonly concurrency?: Concurrency | undefined; readonly batching?: boolean | "inherit" | undefined; readonly discard: true; readonly concurrentFinalizers?: boolean | undefined; }): <A, E, R>(self: Effect<A, E, R>) => Effect<void, E, R>; <A, E, R>(self: Effect<A, E, R>, n: number, options?: { readonly concurrency?: Concurrency | undefined; readonly batching?: boolean | "inherit" | undefined; readonly discard?: false | undefined; readonly concurrentFinalizers?: boolean | undefined; }): Effect<Array<A>, E, R>; <A, E, R>(self: Effect<A, E, R>, n: number, options: { readonly concurrency?: Concurrency | undefined; readonly batching?: boolean | "inherit" | undefined; readonly discard: true; readonly concurrentFinalizers?: boolean | undefined; }): Effect<void, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L2096)

Since v2.0.0