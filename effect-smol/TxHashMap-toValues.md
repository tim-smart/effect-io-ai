Package: `effect`<br />
Module: `TxHashMap`<br />

## TxHashMap.toValues

Returns an array of all values in the TxHashMap.
This is an alias for the `values` function, providing API consistency with HashMap.

**Example**

```ts
import { Effect, TxHashMap } from "effect"

const program = Effect.gen(function*() {
  const inventory = yield* TxHashMap.make(
    ["laptop", { price: 999, stock: 5 }],
    ["mouse", { price: 29, stock: 50 }],
    ["keyboard", { price: 79, stock: 20 }]
  )

  // Get all product information
  const products = yield* TxHashMap.toValues(inventory)
  console.log(products)
  // [{ price: 999, stock: 5 }, { price: 29, stock: 50 }, { price: 79, stock: 20 }]

  // Calculate total inventory value
  const totalValue = products.reduce(
    (sum, product) => sum + (product.price * product.stock),
    0
  )
  console.log(`Total inventory value: $${totalValue}`) // $8,435

  // Find products with low stock
  const lowStockProducts = products.filter((product) => product.stock < 10)
  console.log(`${lowStockProducts.length} products with low stock`)
})
```

**Signature**

```ts
declare const toValues: <K, V>(self: TxHashMap<K, V>) => Effect.Effect<Array<V>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxHashMap.ts#L2069)

Since v2.0.0