Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isNullable

A refinement that checks if a value is either `null` or `undefined`.

**Example**

```ts
import * as assert from "node:assert"
import { isNullable } from "effect/Predicate"

assert.strictEqual(isNullable(null), true)
assert.strictEqual(isNullable(undefined), true)

assert.strictEqual(isNullable(0), false)
assert.strictEqual(isNullable(""), false)
```

**See**

- isNotNullable

**Signature**

```ts
declare const isNullable: <A>(input: A) => input is Extract<A, null | undefined>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L669)

Since v2.0.0