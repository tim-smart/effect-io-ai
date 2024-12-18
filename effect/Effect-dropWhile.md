# dropWhile

Drops all elements as long as the predicate returns `true`.

**Details**

This function processes a collection of elements and uses a predicate to
decide whether to drop an element.

The predicate is a function that takes an element and its index, and it
returns an effect that evaluates to a boolean.

As long as the predicate returns `true`, elements will continue to be dropped
from the collection.

Once the predicate returns `false`, the remaining elements are kept.

**When to Use**

This function allows you to discard elements from the start of a collection
based on a condition, and only keep the rest when the condition no longer
holds.

To import and use `dropWhile` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.dropWhile
```

**Example**

```ts
import { Effect } from "effect"

const numbers = [1, 2, 3, 4, 5, 6]
const predicate = (n: number, i: number) => Effect.succeed(n <= 3)

const program = Effect.gen(function* () {
  const result = yield* Effect.dropWhile(numbers, predicate)
  console.log(result)
})

Effect.runFork(program)
// Output: [4, 5, 6]
```

**Signature**

```ts
export declare const dropWhile: {
  <A, E, R>(
    predicate: (a: NoInfer<A>, i: number) => Effect<boolean, E, R>
  ): (elements: Iterable<A>) => Effect<Array<A>, E, R>
  <A, E, R>(elements: Iterable<A>, predicate: (a: A, i: number) => Effect<boolean, E, R>): Effect<Array<A>, E, R>
}
```
