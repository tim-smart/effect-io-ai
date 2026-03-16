Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.isFutureUnsafe

Checks if a `DateTime` is in the future compared to the current time.

This is a synchronous version that uses `Date.now()` directly.

**Example**

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L1151)

Since v3.6.0