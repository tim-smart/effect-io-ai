Package: `effect`<br />
Module: `TxHashMap`<br />

## TxHashMap.some

Checks if at least one entry in the TxHashMap satisfies the given predicate.

**Example**

```ts
import { Effect, TxHashMap } from "effect"

const program = Effect.gen(function*() {
  // Create a product inventory
  const inventory = yield* TxHashMap.make(
    ["laptop", { price: 999, stock: 5 }],
    ["mouse", { price: 29, stock: 50 }],
    ["keyboard", { price: 79, stock: 0 }]
  )

  // Check if any products are expensive
  const hasExpensiveProducts = yield* TxHashMap.some(
    inventory,
    (product) => product.price > 500
  )
  console.log(hasExpensiveProducts) // true

  // Check if any products are out of stock
  const hasOutOfStock = yield* TxHashMap.some(
    inventory,
    (product) => product.stock === 0
  )
  console.log(hasOutOfStock) // true

  // Data-last usage with pipe
  const hasAffordableItems = yield* inventory.pipe(
    TxHashMap.some((product) => product.price < 50)
  )
  console.log(hasAffordableItems) // true (mouse is $29)
})
```

**Signature**

```ts
declare const some: { <K, V>(predicate: (value: V, key: K) => boolean): (self: TxHashMap<K, V>) => Effect.Effect<boolean, never, Effect.Transaction>; <K, V>(self: TxHashMap<K, V>, predicate: (value: V, key: K) => boolean): Effect.Effect<boolean, never, Effect.Transaction>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxHashMap.ts#L1731)

Since v2.0.0