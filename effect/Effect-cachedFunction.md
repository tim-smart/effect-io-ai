# cachedFunction

Returns a memoized version of a function with effects, reusing results for
the same inputs.

**Details**

This function creates a memoized version of a given function that performs an
effect. Memoization ensures that once a result is computed for a specific
input, it is stored and reused for subsequent calls with the same input,
reducing the need to recompute the result.

The function can optionally take an {@link Equivalence} parameter to
determine how inputs are compared for caching purposes.

**When to Use**

Use this function when you have a function that performs an effect and you
want to avoid recomputing the result for the same input multiple times.

It's ideal for functions that produce deterministic results based on their
inputs, and you want to improve performance by caching the output.

This is particularly useful in scenarios where the function involves
expensive calculations or operations that should be avoided after the first
execution with the same parameters.

To import and use `cachedFunction` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.cachedFunction
```

**Example**

```ts
import { Effect, Random } from "effect"

const program = Effect.gen(function* () {
  const randomNumber = (n: number) => Random.nextIntBetween(1, n)
  console.log("non-memoized version:")
  console.log(yield* randomNumber(10))
  console.log(yield* randomNumber(10))

  console.log("memoized version:")
  const memoized = yield* Effect.cachedFunction(randomNumber)
  console.log(yield* memoized(10))
  console.log(yield* memoized(10))
})

Effect.runFork(program)
// Example Output:
// non-memoized version:
// 2
// 8
// memoized version:
// 5
// 5
```

**Signature**

```ts
export declare const cachedFunction: <A, B, E, R>(
  f: (a: A) => Effect<B, E, R>,
  eq?: Equivalence<A>
) => Effect<(a: A) => Effect<B, E, R>>
```
