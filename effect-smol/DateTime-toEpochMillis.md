Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.toEpochMillis

Get the milliseconds since the Unix epoch of a `DateTime`.

This returns the UTC timestamp regardless of any time zone information.

**Example**

```ts
import { DateTime } from "effect"

const dt = DateTime.makeUnsafe("2024-01-01T00:00:00Z")
const epochMillis = DateTime.toEpochMillis(dt)

console.log(epochMillis) // 1704067200000
console.log(new Date(epochMillis).toISOString()) // "2024-01-01T00:00:00.000Z"
```

**Signature**

```ts
declare const toEpochMillis: (self: DateTime) => number
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L1350)

Since v3.6.0