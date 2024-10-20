# cachedFunction

Returns a memoized version of a function with effects. Memoization ensures
that results are stored and reused for the same inputs, reducing the need to
recompute them.

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
