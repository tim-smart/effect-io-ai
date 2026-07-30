Package: `effect`<br />
Module: `Number`<br />

## Number.isNumber

Type guard that tests if a value is a member of the set of JavaScript
numbers.

**Example**

```ts
import * as assert from "node:assert/strict"
import * as Number from "effect/Number"

// Regular numbers
assert.equal(Number.isNumber(2), true)
assert.equal(Number.isNumber(-3.14), true)
assert.equal(Number.isNumber(0), true)

// Special numeric values
assert.equal(Number.isNumber(Infinity), true)
assert.equal(Number.isNumber(NaN), true)

// Non-number values
assert.equal(Number.isNumber("2"), false)
assert.equal(Number.isNumber(true), false)
assert.equal(Number.isNumber(null), false)
assert.equal(Number.isNumber(undefined), false)
assert.equal(Number.isNumber({}), false)
assert.equal(Number.isNumber([]), false)

// Using as a type guard in conditionals
function processValue(value: unknown): string {
  if (Number.isNumber(value)) {
    // TypeScript now knows 'value' is a number
    return `Numeric value: ${value.toFixed(2)}`
  }
  return "Not a number"
}

assert.strictEqual(processValue(42), "Numeric value: 42.00")
assert.strictEqual(processValue("hello"), "Not a number")

// Filtering for numbers in an array
const mixed = [1, "two", 3, false, 5]
const onlyNumbers = mixed.filter(Number.isNumber)
assert.equal(onlyNumbers, [1, 3, 5])
```

**Signature**

```ts
declare const isNumber: (input: unknown) => input is number
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Number.ts#L160)

Since v2.0.0