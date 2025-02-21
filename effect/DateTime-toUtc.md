# toUtc

For a `DateTime` returns a new `DateTime.Utc`.

To import and use `toUtc` from the "DateTime" module:

```ts
import * as DateTime from "effect/DateTime"
// Can be accessed like this
DateTime.toUtc
```

**Example**

```ts
import { DateTime } from "effect"

const now = DateTime.unsafeMakeZoned({ year: 2024 }, { timeZone: "Europe/London" })

// set as UTC
const utc: DateTime.Utc = DateTime.toUtc(now)
```

**Signature**

```ts
export declare const toUtc: (self: DateTime) => Utc
```
