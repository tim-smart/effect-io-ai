Package: `effect`<br />
Module: `Effect`<br />

## Effect.findFirst

Returns the first element that satisfies the effectful predicate.

**Details**

This function processes a collection of elements and applies an effectful
predicate to each element.

The predicate is a function that takes an element and its index in the
collection, and it returns an effect that evaluates to a boolean.

The function stops as soon as it finds the first element for which the
predicate returns `true` and returns that element wrapped in an `Option`.

If no element satisfies the predicate, the result will be `None`.

**When to Use**

This function allows you to efficiently find an element that meets a specific
condition, even when the evaluation involves effects like asynchronous
operations or side effects.

**Example**

```ts
import { Effect } from "effect"

const numbers = [1, 2, 3, 4, 5]
const predicate = (n: number, i: number) => Effect.succeed(n > 3)

const program = Effect.gen(function*() {
  const result = yield* Effect.findFirst(numbers, predicate)
  console.log(result)
})

Effect.runFork(program)
// Output: { _id: 'Option', _tag: 'Some', value: 4 }
```

**Signature**

```ts
declare const findFirst: { <A, E, R>(predicate: (a: NoInfer<A>, i: number) => Effect<boolean, E, R>): (elements: Iterable<A>) => Effect<Option.Option<A>, E, R>; <A, E, R>(elements: Iterable<A>, predicate: (a: NoInfer<A>, i: number) => Effect<boolean, E, R>): Effect<Option.Option<A>, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L1527)

Since v2.0.0