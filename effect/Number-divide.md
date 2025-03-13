Package: `effect`<br />
Module: `Number`<br />

## Number.divide

Provides a division operation on `number`s.

**Example**

```ts
import * as assert from "node:assert"
import { Number, Option } from "effect"

assert.deepStrictEqual(Number.divide(6, 3), Option.some(2))
assert.deepStrictEqual(Number.divide(6, 0), Option.none())
```

**Signature**

```ts
declare const divide: { (that: number): (self: number) => Option<number>; (self: number, that: number): Option<number>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Number.ts#L105)

Since v2.0.0