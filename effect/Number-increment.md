Package: `effect`<br />
Module: `Number`<br />

## Number.increment

Returns the result of adding `1` to a given number.

**Example**

```ts
import * as assert from "node:assert"
import { increment } from "effect/Number"

assert.deepStrictEqual(increment(2), 3)
```

**Signature**

```ts
declare const increment: (n: number) => number
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Number.ts#L148)

Since v2.0.0