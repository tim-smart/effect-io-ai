Package: `effect`<br />
Module: `Number`<br />

## Number.multiply

Provides a multiplication operation on `number`s.

**Example**

```ts
import { multiply } from "effect/Number"
import * as assert from "node:assert"

assert.deepStrictEqual(multiply(2, 3), 6)
```

**Signature**

```ts
declare const multiply: { (that: number): (self: number) => number; (self: number, that: number): number; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Number.ts#L83)

Since v2.0.0