Package: `effect`<br />
Module: `TxHashMap`<br />

## TxHashMap.TxHashMap.Value

Extracts the value type from a TxHashMap type.

**Example**

```ts
import { Effect, TxHashMap } from "effect"

const program = Effect.gen(function*() {
  // Create a product catalog TxHashMap
  const catalog = yield* TxHashMap.make(
    ["laptop", { price: 999, category: "electronics" }],
    ["book", { price: 29, category: "education" }]
  )

  // Extract the value type (Product)
  type Product = TxHashMap.TxHashMap.Value<typeof catalog>

  // Use the extracted type for type-safe operations
  const processProduct = (product: Product) => {
    return `${product.category}: $${product.price}`
  }

  const laptop = yield* TxHashMap.get(catalog, "laptop")
  // laptop has type Option<Product> thanks to type extraction
})
```

**Signature**

```ts
type Value<T> = T extends TxHashMap<any, infer V> ? V : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxHashMap.ts#L175)

Since v2.0.0