Package: `effect`<br />
Module: `Effect`<br />

## Effect.allWith

A data-last version of `all`, designed for use in pipelines.

**When to Use**

This function enables you to combine multiple effects and customize execution
options such as concurrency levels. This version is useful in functional
pipelines where you first define your data and then apply operations to it.

**Example**

```ts
import { Effect, pipe } from "effect"

const task1 = Effect.succeed(1).pipe(
  Effect.delay("200 millis"),
  Effect.tap(Effect.log("task1 done"))
)

const task2 = Effect.succeed("hello").pipe(
  Effect.delay("100 millis"),
  Effect.tap(Effect.log("task2 done"))
)

const program = pipe(
  [task1, task2],
  // Run both effects concurrently using the concurrent option
  Effect.allWith({ concurrency: 2 })
)

// Effect.runPromise(program).then(console.log)
// Output:
// timestamp=... level=INFO fiber=#3 message="task2 done"
// timestamp=... level=INFO fiber=#2 message="task1 done"
// [ 1, 'hello' ]
```

**Signature**

```ts
declare const allWith: <O extends NoExcessProperties<{ readonly concurrency?: Concurrency | undefined; readonly batching?: boolean | "inherit" | undefined; readonly discard?: boolean | undefined; readonly mode?: "default" | "validate" | "either" | undefined; readonly concurrentFinalizers?: boolean | undefined; }, O>>(options?: O) => <const Arg extends Iterable<Effect<any, any, any>> | Record<string, Effect<any, any, any>>>(arg: Arg) => All.Return<Arg, O>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L839)

Since v2.0.0