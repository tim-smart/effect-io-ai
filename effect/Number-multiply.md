Package: `effect`<br />
Module: `Number`<br />

## Number.multiply

Provides a multiplication operation on `number`s.

**Example**

```ts
import * as assert from "node:assert"
import { multiply } from "effect/Number"

assert.deepStrictEqual(multiply(2, 3), 6)
```

**Signature**

```ts
declare const multiply: { (that: number): (self: number) => number; (self: number, that: number): number; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Number.ts#L66)

Since v2.0.0