Package: `effect`<br />
Module: `Function`<br />

## Function.isFunction

Tests if a value is a `function`.

**Example**

```ts
import * as assert from "node:assert"
import { isFunction } from "effect/Predicate"

assert.deepStrictEqual(isFunction(isFunction), true)
assert.deepStrictEqual(isFunction("function"), false)
```

**Signature**

```ts
declare const isFunction: (input: unknown) => input is Function
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Function.ts#L29)

Since v2.0.0