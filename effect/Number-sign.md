Package: `effect`<br />
Module: `Number`<br />

## Number.sign

Determines the sign of a given `number`.

**Example**

```ts
import * as assert from "node:assert"
import { sign } from "effect/Number"

assert.deepStrictEqual(sign(-5), -1)
assert.deepStrictEqual(sign(0), 0)
assert.deepStrictEqual(sign(5), 1)
```

**Signature**

```ts
declare const sign: (n: number) => Ordering
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Number.ts#L375)

Since v2.0.0