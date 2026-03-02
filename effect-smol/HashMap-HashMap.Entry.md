Package: `effect`<br />
Module: `HashMap`<br />

## HashMap.HashMap.Entry

This type-level utility extracts the entry type `[K, V]` from a `HashMap<K, V>` type.

**Example**

```ts
import * as HashMap from "effect/HashMap"

// Create a product catalog HashMap
const catalog = HashMap.make(
  ["laptop", { price: 999, category: "electronics" }],
  ["book", { price: 29, category: "education" }]
)

// Extract the entry type [string, Product]
type CatalogEntry = HashMap.HashMap.Entry<typeof catalog>

// Use the extracted type for processing entries
const processEntry = ([productId, product]: CatalogEntry) => {
  return `${productId}: $${product.price} (${product.category})`
}

// Convert to entries and process
const descriptions = HashMap.toEntries(catalog).map(processEntry)
console.log(descriptions) // ["laptop: $999 (electronics)", "book: $29 (education)"]
```

**Signature**

```ts
type Entry<T> = [Key<T>, Value<T>]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HashMap.ts#L188)

Since v3.9.0