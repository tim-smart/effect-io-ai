# mergeAll

Merges an `Iterable<Effect<A, E, R>>` to a single effect.

**Details**

This function takes an iterable of effects and combines them into a single
effect. It does this by iterating over each effect in the collection and
applying a function that accumulates results into a "zero" value, which
starts with an initial value and is updated with each effect's success.

The provided function `f` is called for each element in the iterable,
allowing you to specify how to combine the results.

**Options**

The function also allows you to customize how the effects are handled by
specifying options such as concurrency, batching, and how finalizers behave.
These options provide flexibility in running the effects concurrently or
adjusting other execution details.

To import and use `mergeAll` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.mergeAll
```

**Example**

```ts
import { Effect } from "effect"

const numbers = [Effect.succeed(1), Effect.succeed(2), Effect.succeed(3)]
const add = (sum: number, value: number, i: number) => sum + value
const zero = 0

const program = Effect.gen(function* () {
  const total = yield* Effect.mergeAll(numbers, zero, add)
  console.log(total)
})

Effect.runFork(program)
// Output: 6
```

**Signature**

```ts
export declare const mergeAll: {
  <Z, Eff extends Effect<any, any, any>>(
    zero: Z,
    f: (z: Z, a: Effect.Success<Eff>, i: number) => Z,
    options?:
      | {
          readonly concurrency?: Concurrency | undefined
          readonly batching?: boolean | "inherit" | undefined
          readonly concurrentFinalizers?: boolean | undefined
        }
      | undefined
  ): (elements: Iterable<Eff>) => Effect<Z, Effect.Error<Eff>, Effect.Context<Eff>>
  <Eff extends Effect<any, any, any>, Z>(
    elements: Iterable<Eff>,
    zero: Z,
    f: (z: Z, a: Effect.Success<Eff>, i: number) => Z,
    options?:
      | {
          readonly concurrency?: Concurrency | undefined
          readonly batching?: boolean | "inherit" | undefined
          readonly concurrentFinalizers?: boolean | undefined
        }
      | undefined
  ): Effect<Z, Effect.Error<Eff>, Effect.Context<Eff>>
}
```
