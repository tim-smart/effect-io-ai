Package: `effect`<br />
Module: `Number`<br />

## Number.max

Returns the maximum between two `number`s.

**Example**

```ts
import * as assert from "node:assert"
import { max } from "effect/Number"

assert.deepStrictEqual(max(2, 3), 3)
```

**Signature**

```ts
declare const max: { (that: number): (self: number) => number; (self: number, that: number): number; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Number.ts#L354)

Since v2.0.0