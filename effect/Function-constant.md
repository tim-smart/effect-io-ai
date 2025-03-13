Package: `effect`<br />
Module: `Function`<br />

## Function.constant

Creates a constant value that never changes.

This is useful when you want to pass a value to a higher-order function (a function that takes another function as its argument)
and want that inner function to always use the same value, no matter how many times it is called.

**Example**

```ts
import * as assert from "node:assert"
import { constant } from "effect/Function"

const constNull = constant(null)

assert.deepStrictEqual(constNull(), null)
assert.deepStrictEqual(constNull(), null)
```

**Signature**

```ts
declare const constant: <A>(value: A) => LazyArg<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Function.ts#L271)

Since v2.0.0