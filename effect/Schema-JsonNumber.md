Package: `effect`<br />
Module: `Schema`<br />

## Schema.JsonNumber

The `JsonNumber` is a schema for representing JSON numbers. It ensures that the provided value is a valid
number by filtering out `NaN` and `(+/-) Infinity`. This is useful when you want to validate and represent numbers in JSON
format.

**Example**

```ts
import * as assert from "node:assert"
import * as Schema from "effect/Schema"

const is = Schema.is(S.JsonNumber)

assert.deepStrictEqual(is(42), true)
assert.deepStrictEqual(is(Number.NaN), false)
assert.deepStrictEqual(is(Number.POSITIVE_INFINITY), false)
assert.deepStrictEqual(is(Number.NEGATIVE_INFINITY), false)
```

**Signature**

```ts
declare class JsonNumber
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L5429)

Since v3.10.0