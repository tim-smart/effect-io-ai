Package: `effect`<br />
Module: `Number`<br />

## Number.decrement

Decrements a number by `1`.

**Example**

```ts
import { decrement } from "effect/Number"
import * as assert from "node:assert"

assert.deepStrictEqual(decrement(3), 2)
```

**Signature**

```ts
declare const decrement: (n: number) => number
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Number.ts#L189)

Since v2.0.0