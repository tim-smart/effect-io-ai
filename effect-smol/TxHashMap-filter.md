Package: `effect`<br />
Module: `TxHashMap`<br />

## TxHashMap.filter

Filters the TxHashMap to keep only entries that satisfy the provided predicate.

**Return behavior**: This function returns a new TxHashMap reference containing
only the entries that match the condition. The original TxHashMap is not modified.

**Example**

```ts
import { Effect, TxHashMap } from "effect"

const program = Effect.gen(function*() {
  // Create a product inventory
  const inventory = yield* TxHashMap.make(
    ["laptop", { price: 999, stock: 5, category: "electronics" }],
    ["mouse", { price: 29, stock: 50, category: "electronics" }],
    ["book", { price: 15, stock: 100, category: "books" }],
    ["phone", { price: 699, stock: 0, category: "electronics" }]
  )

  // Filter to get only electronics in stock
  const electronicsInStock = yield* TxHashMap.filter(
    inventory,
    (product) => product.category === "electronics" && product.stock > 0
  )

  const size = yield* TxHashMap.size(electronicsInStock)
  console.log(size) // 2 (laptop and mouse)

  // Data-last usage with pipe
  const expensiveItems = yield* inventory.pipe(
    TxHashMap.filter((product) => product.price > 500)
  )

  const expensiveSize = yield* TxHashMap.size(expensiveItems)
  console.log(expensiveSize) // 2 (laptop and phone)

  // Type guard usage
  const highValueItems = yield* TxHashMap.filter(
    inventory,
    (product): product is typeof product & { price: number } =>
      product.price > 50
  )
})
```

**Signature**

```ts
declare const filter: { <K, V, B extends V>(predicate: (value: V, key: K) => value is B): (self: TxHashMap<K, V>) => Effect.Effect<TxHashMap<K, B>, never, Effect.Transaction>; <K, V>(predicate: (value: V, key: K) => boolean): (self: TxHashMap<K, V>) => Effect.Effect<TxHashMap<K, V>, never, Effect.Transaction>; <K, V, B extends V>(self: TxHashMap<K, V>, predicate: (value: V, key: K) => value is B): Effect.Effect<TxHashMap<K, B>, never, Effect.Transaction>; <K, V>(self: TxHashMap<K, V>, predicate: (value: V, key: K) => boolean): Effect.Effect<TxHashMap<K, V>, never, Effect.Transaction>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxHashMap.ts#L1395)

Since v2.0.0