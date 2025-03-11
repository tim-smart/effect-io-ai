## subtract

Provides a subtraction operation on `number`s.

**Example**

```ts
import * as assert from "node:assert"
import { subtract } from "effect/Number"

assert.deepStrictEqual(subtract(2, 3), -1)
```

**Signature**

```ts
declare const subtract: { (that: number): (self: number) => number; (self: number, that: number): number; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Number.ts#L85)

Since v2.0.0