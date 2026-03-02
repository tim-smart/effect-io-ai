Package: `effect`<br />
Module: `Function`<br />

## Function.FunctionN

Represents a function with multiple arguments.

**Example**

```ts
import type { FunctionN } from "effect/Function"
import * as assert from "node:assert"

const sum: FunctionN<[number, number], number> = (a, b) => a + b
assert.deepStrictEqual(sum(2, 3), 5)
```

**Signature**

```ts
type FunctionN<A, B> = (...args: A) => B
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Function.ts#L209)

Since v2.0.0