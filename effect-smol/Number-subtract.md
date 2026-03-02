Package: `effect`<br />
Module: `Number`<br />

## Number.subtract

Provides a subtraction operation on `number`s.

**Example**

```ts
import { subtract } from "effect/Number"
import * as assert from "node:assert"

assert.deepStrictEqual(subtract(2, 3), -1)
```

**Signature**

```ts
declare const subtract: { (that: number): (self: number) => number; (self: number, that: number): number; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Number.ts#L102)

Since v2.0.0