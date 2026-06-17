Package: `effect`<br />
Module: `Equivalence`<br />

## Equivalence.Date

Equivalence instance for `Date` objects that compares their `getTime()` values using `Equivalence.Number`.

**When to use**

Use when you need an `Equivalence` for JavaScript date objects by their
millisecond timestamp.

**Details**

Different `Date` instances that represent the same millisecond timestamp are equivalent. Because `Equivalence.Number`
treats `NaN` as equal to `NaN`, two invalid `Date` values are also considered equivalent.

**Example** (Comparing Date values)

```ts
import { Equivalence } from "effect"

const d1 = new Date("2020-01-01T00:00:00.000Z")
const d2 = new Date("2020-01-01T00:00:00.000Z")
const d3 = new Date("2021-01-01T00:00:00.000Z")
const invalidDate1 = new Date("foo")
const invalidDate2 = new Date("bar")

console.log(Equivalence.Date(d1, d2)) // true
console.log(Equivalence.Date(d1, d3)) // false
console.log(Equivalence.Date(invalidDate1, invalidDate2)) // true
console.log(Equivalence.Date(invalidDate1, d1)) // false
```

**Example** (Comparing reference and value equality)

```ts
import { Equivalence } from "effect"

const d1 = new Date(0)
const d2 = new Date(0)

console.log(d1 === d2) // false (different references)
console.log(Equivalence.Date(d1, d2)) // true (same time value)
```

**See**

- `Number` for the numeric equivalence applied to each `Date#getTime()` result
- `mapInput` for deriving an equivalence by mapping inputs before comparison
- `strictEqual` for reference equality when two values must be the same object

**Signature**

```ts
declare const Date: Equivalence<Date>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Equivalence.ts#L867)

Since v2.0.0