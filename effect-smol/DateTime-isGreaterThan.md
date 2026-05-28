Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.isGreaterThan

Checks whether the first `DateTime` is after the second `DateTime`.

**Example** (Checking whether a DateTime is later)

```ts
import { DateTime } from "effect"

const date1 = DateTime.makeUnsafe("2024-02-01")
const date2 = DateTime.makeUnsafe("2024-01-01")

console.log(DateTime.isGreaterThan(date1, date2)) // true
console.log(DateTime.isGreaterThan(date2, date1)) // false
```

**Signature**

```ts
declare const isGreaterThan: { (that: DateTime): (self: DateTime) => boolean; (self: DateTime, that: DateTime): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L1340)

Since v4.0.0