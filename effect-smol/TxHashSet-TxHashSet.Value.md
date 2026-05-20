Package: `effect`<br />
Module: `TxHashSet`<br />

## TxHashSet.TxHashSet.Value

Extracts the value type from a `TxHashSet` type.

**Example** (Extracting a TxHashSet value type)

```ts
import type { TxHashSet } from "effect"

type FruitSet = TxHashSet.TxHashSet<"apple" | "banana" | "cherry">

// Extract the value type
type Fruit = TxHashSet.TxHashSet.Value<FruitSet> // "apple" | "banana" | "cherry"

const processFruit = (fruit: Fruit) => {
  return `Processing ${fruit}`
}

console.log(processFruit("apple")) // Processing apple
```

**Signature**

```ts
type Value<T> = T extends TxHashSet<infer V> ? V : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxHashSet.ts#L152)

Since v4.0.0