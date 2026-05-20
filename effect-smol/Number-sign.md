Package: `effect`<br />
Module: `Number`<br />

## Number.sign

Determines the sign of a given `number`.

**Example** (Determining the sign)

```ts
import { Number } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(Number.sign(-5), -1)
assert.deepStrictEqual(Number.sign(0), 0)
assert.deepStrictEqual(Number.sign(5), 1)
```

**Signature**

```ts
declare const sign: (n: number) => Ordering
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Number.ts#L442)

Since v2.0.0