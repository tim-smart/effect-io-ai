# dropUntil

Drops all elements until the effectful predicate returns `true`.

**Details**

This function processes a collection of elements and uses an effectful
predicate to determine when to stop dropping elements. It drops elements from
the beginning of the collection until the predicate returns `true`.

The predicate is a function that takes an element and its index in the
collection and returns an effect that evaluates to a boolean.

Once the predicate returns `true`, the remaining elements of the collection
are returned.

**Note**: The first element for which the predicate returns `true` is also
dropped.

**When to Use**

This function allows you to conditionally skip over a part of the collection
based on some criteria defined in the predicate.

To import and use `dropUntil` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.dropUntil
```

**Example**

```ts
import { Effect } from "effect"

const numbers = [1, 2, 3, 4, 5, 6]
const predicate = (n: number, i: number) => Effect.succeed(n > 3)

const program = Effect.gen(function* () {
  const result = yield* Effect.dropUntil(numbers, predicate)
  console.log(result)
})

Effect.runFork(program)
// Output: [5, 6]
```

**Signature**

```ts
export declare const dropUntil: {
  <A, E, R>(
    predicate: (a: NoInfer<A>, i: number) => Effect<boolean, E, R>
  ): (elements: Iterable<A>) => Effect<Array<A>, E, R>
  <A, E, R>(elements: Iterable<A>, predicate: (a: A, i: number) => Effect<boolean, E, R>): Effect<Array<A>, E, R>
}
```
