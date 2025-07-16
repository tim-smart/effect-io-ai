Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isNotNullable

A refinement that checks if a value is neither `null` nor `undefined`.
The type is narrowed to `NonNullable<A>`.

**Example**

```ts
import * as assert from "node:assert"
import { isNotNullable } from "effect/Predicate"

assert.strictEqual(isNotNullable(0), true)
assert.strictEqual(isNotNullable("hello"), true)

assert.strictEqual(isNotNullable(null), false)
assert.strictEqual(isNotNullable(undefined), false)
```

**See**

- isNullable

**Signature**

```ts
declare const isNotNullable: <A>(input: A) => input is NonNullable<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L692)

Since v2.0.0