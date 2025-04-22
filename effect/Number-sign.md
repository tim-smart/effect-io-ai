Package: `effect`<br />
Module: `Number`<br />

## Number.sign

Determines the sign of a given `number`.

**Example**

```ts
import * as assert from "node:assert/strict"
import { sign } from "effect/Number"

assert.equal(sign(-5), -1)
assert.equal(sign(0), 0)
assert.equal(sign(5), 1)
```

**Signature**

```ts
declare const sign: (n: number) => Ordering
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Number.ts#L956)

Since v2.0.0