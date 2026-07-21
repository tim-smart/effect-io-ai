Package: `effect`<br />
Module: `Effect`<br />

## Effect.reduce

Reduces elements from left to right with an effectful accumulator function.

**When to use**

Use when each accumulation step is effectful and must run sequentially in
iteration order.

**Details**

The accumulator function receives the current accumulator, the current
element, and its zero-based index. The `zero` function is evaluated each
time the effect runs. An empty iterable succeeds with its result. If a step
fails, remaining elements are not processed.

**Example** (Summing values sequentially)

```ts
import { Console, Effect } from "effect"

const program = Effect.reduce(
  [1, 2, 3],
  () => 0,
  (total, value, index) =>
    Console.log(`Adding ${value} at index ${index}`).pipe(
      Effect.as(total + value)
    )
)

Effect.runPromise(program).then(console.log)
// Output:
// Adding 1 at index 0
// Adding 2 at index 1
// Adding 3 at index 2
// 6
```

**Signature**

```ts
declare const reduce: { <Z, A, E, R>(zero: LazyArg<Z>, f: (z: Z, a: A, i: number) => Effect<Z, E, R>): (elements: Iterable<A>) => Effect<Z, E, R>; <A, Z, E, R>(elements: Iterable<A>, zero: LazyArg<Z>, f: (z: Z, a: A, i: number) => Effect<Z, E, R>): Effect<Z, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L608)

Since v2.0.0