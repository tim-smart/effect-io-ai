Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.isPastUnsafe

Checks if a `DateTime` is in the past compared to the current time.

This is a synchronous version that uses `Date.now()` directly.

**Example**

```ts
import { DateTime } from "effect"

const now = DateTime.nowUnsafe()
const pastDate = DateTime.subtract(now, { hours: 1 })

console.log(DateTime.isPastUnsafe(pastDate)) // true
console.log(DateTime.isPastUnsafe(now)) // false
```

**Signature**

```ts
declare const isPastUnsafe: (self: DateTime) => boolean
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L1193)

Since v3.6.0