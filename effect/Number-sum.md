## sum

Provides an addition operation on `number`s.

**Example**

```ts
import * as assert from "node:assert"
import { sum } from "effect/Number"

assert.deepStrictEqual(sum(2, 3), 5)
```

**Signature**

```ts
declare const sum: { (that: number): (self: number) => number; (self: number, that: number): number; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Number.ts#L47)

Since v2.0.0