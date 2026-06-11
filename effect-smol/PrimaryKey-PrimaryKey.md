Package: `effect`<br />
Module: `PrimaryKey`<br />

## PrimaryKey.PrimaryKey

An interface for objects that can provide a string-based primary key.

**When to use**

Use to define values that expose a stable string identifier for equality,
hashing, caching, or persistence.

**Details**

Objects implementing this interface must provide a method that returns
a unique string identifier.

**Example** (Implementing a primary key)

```ts
import { PrimaryKey } from "effect"

class ProductId implements PrimaryKey.PrimaryKey {
  constructor(private category: string, private id: number) {}

  [PrimaryKey.symbol](): string {
    return `${this.category}-${this.id}`
  }
}

const productId = new ProductId("electronics", 42)
console.log(PrimaryKey.value(productId)) // "electronics-42"
```

**Signature**

```ts
export interface PrimaryKey {
  [symbol](): string
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PrimaryKey.ts#L62)

Since v2.0.0