Package: `effect`<br />
Module: `Effect`<br />

## Effect.takeUntil

Takes elements from a collection until the effectful predicate returns
`true`.

**Details**

This function processes a collection of elements and uses an effectful
predicate to decide when to stop taking elements. The elements are taken from
the beginning of the collection until the predicate returns `true`.

The predicate is a function that takes an element and its index in the
collection, and returns an effect that resolves to a boolean.

Once the predicate returns `true`, the remaining elements of the collection
are discarded, and the function stops taking more elements.

**Note**: The first element for which the predicate returns `true` is also
included in the result.

**When to Use**

Use this function when you want to conditionally take elements from a
collection based on a dynamic condition. For example, you may want to collect
numbers from a list until a certain threshold is reached, or gather items
until a specific condition is met.

**Example**

```ts
import { Effect } from "effect"

const numbers = [1, 2, 3, 4, 5, 6]
const predicate = (n: number, i: number) => Effect.succeed(n > 3)

const program = Effect.gen(function*() {
  const result = yield* Effect.takeUntil(numbers, predicate)
  console.log(result)
})

Effect.runFork(program)
// Output: [ 1, 2, 3, 4 ]
```

**See**

- `takeWhile` for a similar function that takes elements while the
predicate returns `true`.

**Signature**

```ts
declare const takeUntil: { <A, R, E>(predicate: (a: NoInfer<A>, i: number) => Effect<boolean, E, R>): (elements: Iterable<A>) => Effect<Array<A>, E, R>; <A, E, R>(elements: Iterable<A>, predicate: (a: NoInfer<A>, i: number) => Effect<boolean, E, R>): Effect<Array<A>, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L1186)

Since v2.0.0