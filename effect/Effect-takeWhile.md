## takeWhile

Takes elements as long as the predicate returns `true`.

**Details**

This function processes a collection of elements and uses a predicate to
decide whether to take an element.

The predicate is a function that takes an element and its index, and it
returns an effect that evaluates to a boolean.

As long as the predicate returns `true`, elements will continue to be taken
from the collection.

Once the predicate returns `false`, the remaining elements are discarded.

**Example**

```ts
import { Effect } from "effect"

const numbers = [1, 2, 3, 4, 5, 6]
const predicate = (n: number, i: number) => Effect.succeed(n <= 3)

const program = Effect.gen(function*() {
  const result = yield* Effect.takeWhile(numbers, predicate)
  console.log(result)
})

// Effect.runFork(program)
// Output: [1, 2, 3]
```

**See**

- `takeUntil` for a similar function that takes elements until the predicate returns `true`.

**Signature**

```ts
declare const takeWhile: { <A, E, R>(predicate: (a: NoInfer<A>, i: number) => Effect<boolean, E, R>): (elements: Iterable<A>) => Effect<Array<A>, E, R>; <A, E, R>(elements: Iterable<A>, predicate: (a: NoInfer<A>, i: number) => Effect<boolean, E, R>): Effect<Array<A>, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L1203)

Since v2.0.0