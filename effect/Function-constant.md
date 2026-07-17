Package: `effect`<br />
Module: `Function`<br />

## Function.constant

Creates a zero-argument function that always returns the provided value.

**When to use**

Use when you need a thunk or callback that returns the same value on every
invocation.

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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Function.ts#L324)

Since v2.0.0