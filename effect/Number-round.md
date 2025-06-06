Package: `effect`<br />
Module: `Number`<br />

## Number.round

Returns the number rounded with the given precision.

**Example**

```ts
import * as assert from "node:assert/strict"
import { round } from "effect/Number"

assert.equal(round(1.1234, 2), 1.12)
assert.equal(round(1.567, 2), 1.57)
```

**Signature**

```ts
declare const round: { (precision: number): (self: number) => number; (self: number, precision: number): number; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Number.ts#L1065)

Since v3.8.0