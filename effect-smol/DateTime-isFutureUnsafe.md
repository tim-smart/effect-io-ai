Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.isFutureUnsafe

Checks if a `DateTime` is in the future compared to the current time.

**Details**

This is a synchronous version that uses `Date.now()` directly.

**Example** (Checking future DateTime values unsafely)

```ts
import { DateTime } from "effect"

const now = DateTime.nowUnsafe()
const futureDate = DateTime.add(now, { hours: 1 })

console.log(DateTime.isFutureUnsafe(futureDate)) // true
console.log(DateTime.isFutureUnsafe(now)) // false
```

**Signature**

```ts
declare const isFutureUnsafe: (self: DateTime) => boolean
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L1431)

Since v4.0.0