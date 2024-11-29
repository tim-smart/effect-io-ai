# allWith

A data-last version of {@link all}, designed for use in pipelines.

**When to Use**

The `allWith` function enables you to combine multiple effects and customize execution options
such as concurrency levels. This version is useful in functional pipelines where you first define
your data and then apply operations to it.

To import and use `allWith` from the "Effect" module:

ts
import \* as Effect from "effect/Effect"
// Can be accessed like this
Effect.allWith
undefined

**Example**

```ts
import { Effect, pipe } from "effect"

const task1 = Effect.succeed(1).pipe(Effect.delay("200 millis"), Effect.tap(Effect.log("task1 done")))

const task2 = Effect.succeed("hello").pipe(Effect.delay("100 millis"), Effect.tap(Effect.log("task2 done")))

const program = pipe(
  [task1, task2],
  // Run both effects concurrently using the concurrent option
  Effect.allWith({ concurrency: 2 })
)

Effect.runPromise(program).then(console.log)
// Output:
// timestamp=... level=INFO fiber=#3 message="task2 done"
// timestamp=... level=INFO fiber=#2 message="task1 done"
// [ 1, 'hello' ]
```

**Signature**

```ts
export declare const allWith: <
  O extends {
    readonly concurrency?: Concurrency | undefined
    readonly batching?: boolean | "inherit" | undefined
    readonly discard?: boolean | undefined
    readonly mode?: "default" | "validate" | "either" | undefined
    readonly concurrentFinalizers?: boolean | undefined
  }
>(
  options?: O
) => <const Arg extends Iterable<Effect<any, any, any>> | Record<string, Effect<any, any, any>>>(
  arg: Arg
) => All.Return<Arg, O>
```
