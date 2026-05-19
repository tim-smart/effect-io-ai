Package: `effect`<br />
Module: `Function`<br />

## Function.constant

Creates a zero-argument function that always returns the provided value.

Use `constant` when an API expects a thunk or callback and every invocation
should return the same value.

**Example** (Creating a constant thunk)

```ts
import { Function } from "effect"
import * as assert from "node:assert"

const constNull = Function.constant(null)

assert.deepStrictEqual(constNull(), null)
assert.deepStrictEqual(constNull(), null)
```

**Signature**

```ts
declare const constant: <A>(value: A) => LazyArg<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Function.ts#L317)

Since v2.0.0