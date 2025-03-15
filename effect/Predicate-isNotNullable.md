Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isNotNullable

A guard that succeeds when the input is not `null` or `undefined`.

**Example**

```ts
import * as assert from "node:assert"
import { isNotNullable } from "effect/Predicate"

assert.deepStrictEqual(isNotNullable({}), true)
assert.deepStrictEqual(isNotNullable([]), true)

assert.deepStrictEqual(isNotNullable(null), false)
assert.deepStrictEqual(isNotNullable(undefined), false)
```

**Signature**

```ts
declare const isNotNullable: <A>(input: A) => input is NonNullable<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L541)

Since v2.0.0