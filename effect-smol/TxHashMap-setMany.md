Package: `effect`<br />
Module: `TxHashMap`<br />

## TxHashMap.setMany

Sets multiple key-value pairs in the TxHashMap.

**Mutation behavior**: This function mutates the original TxHashMap by setting
all provided key-value pairs. It does not return a new TxHashMap reference.

**Example**

```ts
import { Effect, TxHashMap } from "effect"

const program = Effect.gen(function*() {
  // Create an empty product catalog
  const catalog = yield* TxHashMap.empty<
    string,
    { price: number; stock: number }
  >()

  // Bulk load initial products
  const initialProducts: Array<
    readonly [string, { price: number; stock: number }]
  > = [
    ["laptop", { price: 999, stock: 5 }],
    ["mouse", { price: 29, stock: 50 }],
    ["keyboard", { price: 79, stock: 20 }],
    ["monitor", { price: 299, stock: 8 }]
  ]

  yield* TxHashMap.setMany(catalog, initialProducts)

  console.log(yield* TxHashMap.size(catalog)) // 4

  // Update prices with a new batch
  const priceUpdates: Array<
    readonly [string, { price: number; stock: number }]
  > = [
    ["laptop", { price: 899, stock: 5 }], // sale price
    ["mouse", { price: 25, stock: 50 }], // sale price
    ["webcam", { price: 89, stock: 12 }] // new product
  ]

  yield* TxHashMap.setMany(catalog, priceUpdates)

  console.log(yield* TxHashMap.size(catalog)) // 5 (4 original + 1 new)

  // Verify the updates
  const laptop = yield* TxHashMap.get(catalog, "laptop")
  console.log(laptop) // Option.some({ price: 899, stock: 5 })

  // Can also use Map, Set of tuples, or any iterable of entries
  const jsMap = new Map([["tablet", { price: 399, stock: 3 }]])
  yield* TxHashMap.setMany(catalog, jsMap)
})
```

**Signature**

```ts
declare const setMany: { <K1 extends K, K, V1 extends V, V>(entries: Iterable<readonly [K1, V1]>): (self: TxHashMap<K, V>) => Effect.Effect<void, never, Effect.Transaction>; <K1 extends K, K, V1 extends V, V>(self: TxHashMap<K, V>, entries: Iterable<readonly [K1, V1]>): Effect.Effect<void, never, Effect.Transaction>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxHashMap.ts#L1115)

Since v2.0.0