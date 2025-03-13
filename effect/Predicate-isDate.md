Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isDate

A guard that succeeds when the input is a `Date`.

**Example**

```ts
import * as assert from "node:assert"
import { isDate } from "effect/Predicate"

assert.deepStrictEqual(isDate(new Date()), true)

assert.deepStrictEqual(isDate(null), false)
assert.deepStrictEqual(isDate({}), false)
```

**Signature**

```ts
declare const isDate: (input: unknown) => input is Date
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L594)

Since v2.0.0