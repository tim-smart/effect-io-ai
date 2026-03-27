Package: `effect`<br />
Module: `TxHashSet`<br />

## TxHashSet.make

Creates a TxHashSet from a variable number of values.

**Example**

```ts
import { Effect, TxHashSet } from "effect"

const program = Effect.gen(function*() {
  const fruits = yield* TxHashSet.make("apple", "banana", "cherry")
  console.log(yield* TxHashSet.size(fruits)) // 3

  const numbers = yield* TxHashSet.make(1, 2, 3, 2, 1) // Duplicates ignored
  console.log(yield* TxHashSet.size(numbers)) // 3

  const mixed = yield* TxHashSet.make("hello", 42, true)
  console.log(yield* TxHashSet.size(mixed)) // 3
})
```

**Signature**

```ts
declare const make: <Values extends ReadonlyArray<any>>(...values: Values) => Effect.Effect<TxHashSet<Values[number]>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxHashSet.ts#L196)

Since v2.0.0