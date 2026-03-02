Package: `effect`<br />
Module: `PrimaryKey`<br />

## PrimaryKey.value

Extracts the string value from a `PrimaryKey`.

**Example**

```ts
import { PrimaryKey } from "effect"

class OrderId implements PrimaryKey.PrimaryKey {
  constructor(private timestamp: number, private sequence: number) {}

  [PrimaryKey.symbol](): string {
    return `order_${this.timestamp}_${this.sequence}`
  }
}

const orderId = new OrderId(1640995200000, 1)
console.log(PrimaryKey.value(orderId)) // "order_1640995200000_1"

// Can also be used with simple string-based implementations
const simpleKey = {
  [PrimaryKey.symbol]: () => "simple-key-123"
}
console.log(PrimaryKey.value(simpleKey)) // "simple-key-123"
```

**Signature**

```ts
declare const value: (self: PrimaryKey) => string
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PrimaryKey.ts#L85)

Since v2.0.0