Package: `effect`<br />
Module: `Number`<br />

## Number.max

Returns the maximum between two `number`s.

**Example** (Finding the maximum)

```ts
import { Number } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(Number.max(2, 3), 3)
```

**Signature**

```ts
declare const max: { (that: number): (self: number) => number; (self: number, that: number): number; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Number.ts#L420)

Since v2.0.0