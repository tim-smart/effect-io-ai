Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isDate

A refinement that checks if a value is a `Date` object.

**Example**

```ts
import * as assert from "node:assert"
import { isDate } from "effect/Predicate"

assert.strictEqual(isDate(new Date()), true)

assert.strictEqual(isDate(Date.now()), false) // `Date.now()` returns a number
assert.strictEqual(isDate("2023-01-01"), false)
```

**Signature**

```ts
declare const isDate: (input: unknown) => input is Date
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L749)

Since v2.0.0