Package: `effect`<br />
Module: `Number`<br />

## Number.sum

Provides an addition operation on `number`s.

**Example**

```ts
import { sum } from "effect/Number"
import * as assert from "node:assert"

assert.deepStrictEqual(sum(2, 3), 5)
```

**Signature**

```ts
declare const sum: { (that: number): (self: number) => number; (self: number, that: number): number; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Number.ts#L65)

Since v2.0.0