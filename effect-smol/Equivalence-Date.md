Package: `effect`<br />
Module: `Equivalence`<br />

## Equivalence.Date

An `Equivalence` instance for `Date` objects.

Dates are compared by their time value (milliseconds since the Unix epoch),
using `Date.prototype.getTime`.

When to use this:
- When comparing `Date` objects by their exact point in time
- When you need value-based equality instead of reference equality
- When working with collections that contain `Date` values

Behavior:
- Does not mutate inputs
- Two dates are equivalent if `self.getTime() === that.getTime()`
- Internally uses `Number` equivalence
- Different `Date` instances representing the same time are considered equivalent

**Example**

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

**Example** (Reference vs value equality)

```ts
import { Equivalence } from "effect"

const d1 = new Date(0)
const d2 = new Date(0)

console.log(d1 === d2) // false (different references)
console.log(Equivalence.Date(d1, d2)) // true (same time value)
```

See also: `Number`, `mapInput`, `strictEqual`

**Signature**

```ts
declare const Date: Equivalence<Date>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Equivalence.ts#L903)

Since v4.0.0