Package: `effect`<br />
Module: `Number`<br />

## Number.increment

Returns the result of adding `1` to a given number.

**Example**

```ts
import { increment } from "effect/Number"
import * as assert from "node:assert"

assert.deepStrictEqual(increment(2), 3)
```

**Signature**

```ts
declare const increment: (n: number) => number
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Number.ts#L173)

Since v2.0.0