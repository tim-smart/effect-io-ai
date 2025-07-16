Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isString

A refinement that checks if a value is a `string`.

**Example**

```ts
import * as assert from "node:assert"
import { isString } from "effect/Predicate"

assert.strictEqual(isString("hello"), true)
assert.strictEqual(isString(""), true)

assert.strictEqual(isString(123), false)
assert.strictEqual(isString(null), false)
```

**Signature**

```ts
declare const isString: (input: unknown) => input is string
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L334)

Since v2.0.0