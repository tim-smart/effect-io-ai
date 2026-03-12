Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.isGreaterThanOrEqualTo

Checks if the first `DateTime` is after or equal to the second `DateTime`.

**Example**

```ts
import { DateTime } from "effect"

const date1 = DateTime.makeUnsafe("2024-01-01")
const date2 = DateTime.makeUnsafe("2024-01-01")
const date3 = DateTime.makeUnsafe("2024-02-01")

console.log(DateTime.isGreaterThanOrEqualTo(date1, date2)) // true
console.log(DateTime.isGreaterThanOrEqualTo(date3, date1)) // true
console.log(DateTime.isGreaterThanOrEqualTo(date1, date3)) // false
```

**Signature**

```ts
declare const isGreaterThanOrEqualTo: { (that: DateTime): (self: DateTime) => boolean; (self: DateTime, that: DateTime): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L1037)

Since v3.6.0