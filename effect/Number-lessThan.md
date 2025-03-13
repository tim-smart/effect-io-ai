Package: `effect`<br />
Module: `Number`<br />

## Number.lessThan

Returns `true` if the first argument is less than the second, otherwise `false`.

**Example**

```ts
import * as assert from "node:assert"
import { lessThan } from "effect/Number"

assert.deepStrictEqual(lessThan(2, 3), true)
assert.deepStrictEqual(lessThan(3, 3), false)
assert.deepStrictEqual(lessThan(4, 3), false)
```

**Signature**

```ts
declare const lessThan: { (that: number): (self: number) => boolean; (self: number, that: number): boolean; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Number.ts#L194)

Since v2.0.0