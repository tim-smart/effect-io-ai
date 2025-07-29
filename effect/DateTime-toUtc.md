Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.toUtc

For a `DateTime` returns a new `DateTime.Utc`.

**Example**

```ts
import { DateTime } from "effect"

const now = DateTime.unsafeMakeZoned({ year: 2024 }, { timeZone: "Europe/London" })

// set as UTC
const utc: DateTime.Utc = DateTime.toUtc(now)
```

**Signature**

```ts
declare const toUtc: (self: DateTime) => Utc
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/DateTime.ts#L535)

Since v3.13.0