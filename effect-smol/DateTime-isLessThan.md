Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.isLessThan

Checks if the first `DateTime` is before the second `DateTime`.

**Example**

```ts
import { DateTime } from "effect"

const date1 = DateTime.makeUnsafe("2024-01-01")
const date2 = DateTime.makeUnsafe("2024-02-01")

console.log(DateTime.isLessThan(date1, date2)) // true
console.log(DateTime.isLessThan(date2, date1)) // false
```

**Signature**

```ts
declare const isLessThan: { (that: DateTime): (self: DateTime) => boolean; (self: DateTime, that: DateTime): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L1060)

Since v3.6.0