# allSuccesses

Evaluates and runs each effect in the iterable, collecting only the
successful results while discarding failures.

**Details**

This function function processes an iterable of effects and runs each one. If
an effect is successful, its result is collected; if it fails, the result is
discarded. This ensures that only successful outcomes are kept.

**Options**

The function also allows you to customize how the effects are handled by
specifying options such as concurrency, batching, and how finalizers behave.
These options provide flexibility in running the effects concurrently or
adjusting other execution details.

To import and use `allSuccesses` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.allSuccesses
```

**Example**

```ts
import { Effect } from "effect"

const tasks = [Effect.succeed(1), Effect.fail("Error 1"), Effect.succeed(2), Effect.fail("Error 2")]

const program = Effect.gen(function* () {
  const successfulResults = yield* Effect.allSuccesses(tasks)
  console.log(successfulResults)
})

// Effect.runFork(program)
// Output: [1, 2]
```

**Signature**

```ts
export declare const allSuccesses: <X extends Effect<any, any, any>>(
  elements: Iterable<X>,
  options?:
    | {
        readonly concurrency?: Concurrency | undefined
        readonly batching?: boolean | "inherit" | undefined
        readonly concurrentFinalizers?: boolean | undefined
      }
    | undefined
) => Effect<Array<Effect.Success<X>>, never, Effect.Context<X>>
```
