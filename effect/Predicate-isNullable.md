Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isNullable

A guard that succeeds when the input is `null` or `undefined`.

**Example**

```ts
import * as assert from "node:assert"
import { isNullable } from "effect/Predicate"

assert.deepStrictEqual(isNullable(null), true)
assert.deepStrictEqual(isNullable(undefined), true)

assert.deepStrictEqual(isNullable({}), false)
assert.deepStrictEqual(isNullable([]), false)
```

**Signature**

```ts
declare const isNullable: <A>(input: A) => input is Extract<A, null | undefined>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L521)

Since v2.0.0