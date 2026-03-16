Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.max

Returns the later of two `DateTime` values.

**Example**

```ts
import { DateTime } from "effect"

const date1 = DateTime.makeUnsafe("2024-01-01")
const date2 = DateTime.makeUnsafe("2024-02-01")

const later = DateTime.max(date1, date2)
// later equals date2 (2024-02-01)
```

**Signature**

```ts
declare const max: { <That extends DateTime>(that: That): <Self extends DateTime>(self: Self) => Self | That; <Self extends DateTime, That extends DateTime>(self: Self, that: That): Self | That; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L992)

Since v3.6.0