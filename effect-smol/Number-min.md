Package: `effect`<br />
Module: `Number`<br />

## Number.min

Returns the minimum between two `number`s.

**Example**

```ts
import { min } from "effect/Number"
import * as assert from "node:assert"

assert.deepStrictEqual(min(2, 3), 2)
```

**Signature**

```ts
declare const min: { (that: number): (self: number) => number; (self: number, that: number): number; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Number.ts#L387)

Since v2.0.0