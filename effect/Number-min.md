Package: `effect`<br />
Module: `Number`<br />

## Number.min

Returns the minimum between two `number`s.

**Example**

```ts
import * as assert from "node:assert/strict"
import { min } from "effect/Number"

assert.equal(min(2, 3), 2)
```

**Signature**

```ts
declare const min: { (that: number): (self: number) => number; (self: number, that: number): number; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Number.ts#L915)

Since v2.0.0