Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.fromDateUnsafe

Create a `DateTime` from a `Date`.

If the `Date` is invalid, an `IllegalArgumentError` will be thrown.

**Example**

```ts
import { DateTime } from "effect"

const date = new Date("2024-01-01T12:00:00Z")
const dateTime = DateTime.fromDateUnsafe(date)

console.log(DateTime.formatIso(dateTime)) // "2024-01-01T12:00:00.000Z"
```

**Signature**

```ts
declare const fromDateUnsafe: (date: Date) => Utc
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L431)

Since v3.6.0