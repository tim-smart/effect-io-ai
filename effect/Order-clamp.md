Package: `effect`<br />
Module: `Order`<br />

## Order.clamp

Clamp a value between a minimum and a maximum.

**Example**

```ts
import * as assert from "node:assert"
import { Order, Number } from "effect"

const clamp = Order.clamp(Number.Order)({ minimum: 1, maximum: 5 })

assert.equal(clamp(3), 3)
assert.equal(clamp(0), 1)
assert.equal(clamp(6), 5)
```

**Signature**

```ts
declare const clamp: <A>(O: Order<A>) => { (options: { minimum: A; maximum: A; }): (self: A) => A; (self: A, options: { minimum: A; maximum: A; }): A; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Order.ts#L334)

Since v2.0.0