Package: `effect`<br />
Module: `Effect`<br />

## Effect.zipWith

Combines two effects sequentially and applies a function to their results to
produce a single value.

**Details**

This function runs two effects in sequence (or concurrently, if the `{
concurrent: true }` option is provided) and combines their results using a
provided function. Unlike `zip`, which returns a tuple of the results,
this function processes the results with a custom function to produce a
single output.

**Example** (Combining Effects with a Custom Function)

```ts
import { Effect } from "effect"

const task1 = Effect.succeed(1).pipe(
  Effect.delay("200 millis"),
  Effect.tap(Effect.log("task1 done"))
)
const task2 = Effect.succeed("hello").pipe(
  Effect.delay("100 millis"),
  Effect.tap(Effect.log("task2 done"))
)

const task3 = Effect.zipWith(
  task1,
  task2,
  // Combines results into a single value
  (number, string) => number + string.length
)

Effect.runPromise(task3).then(console.log)
// Output:
// timestamp=... level=INFO fiber=#3 message="task1 done"
// timestamp=... level=INFO fiber=#2 message="task2 done"
// 6
```

**Signature**

```ts
declare const zipWith: { <A2, E2, R2, A, B>(that: Effect<A2, E2, R2>, f: (a: A, b: A2) => B, options?: { readonly concurrent?: boolean | undefined; readonly batching?: boolean | "inherit" | undefined; readonly concurrentFinalizers?: boolean | undefined; }): <E, R>(self: Effect<A, E, R>) => Effect<B, E2 | E, R2 | R>; <A, E, R, A2, E2, R2, B>(self: Effect<A, E, R>, that: Effect<A2, E2, R2>, f: (a: A, b: A2) => B, options?: { readonly concurrent?: boolean | undefined; readonly batching?: boolean | "inherit" | undefined; readonly concurrentFinalizers?: boolean | undefined; }): Effect<B, E2 | E, R2 | R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L12741)

Since v2.0.0