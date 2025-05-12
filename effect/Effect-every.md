Package: `effect`<br />
Module: `Effect`<br />

## Effect.every

Determines whether all elements of the iterable satisfy the effectful
predicate.

**Details**

This function checks whether every element in a given collection (an
iterable) satisfies a condition defined by an effectful predicate.

The predicate is a function that takes an element and its index, and it
returns an effect that evaluates to a boolean.

The function will process each element and return `true` if all elements
satisfy the predicate; otherwise, it returns `false`.

**When to Use**

This function is useful when you need to verify that all items in a
collection meet certain criteria, even when the evaluation of each item
involves effects, such as asynchronous checks or complex computations.

**Example**

```ts
import { Effect } from "effect"

const numbers = [2, 4, 6, 8]
const predicate = (n: number, i: number) => Effect.succeed(n % 2 === 0)

const program = Effect.gen(function*() {
  const allEven = yield* Effect.every(numbers, predicate)
  console.log(allEven)
})

Effect.runFork(program)
// Output: true
```

**See**

- `exists` for a similar function that returns a boolean indicating
whether **any** element satisfies the predicate.

**Signature**

```ts
declare const every: { <A, E, R>(predicate: (a: A, i: number) => Effect<boolean, E, R>): (elements: Iterable<A>) => Effect<boolean, E, R>; <A, E, R>(elements: Iterable<A>, predicate: (a: A, i: number) => Effect<boolean, E, R>): Effect<boolean, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L1288)

Since v2.0.0