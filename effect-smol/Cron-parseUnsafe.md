Package: `effect`<br />
Module: `Cron`<br />

## Cron.parseUnsafe

Parses a cron expression into a Cron instance, throwing on failure.

This function provides a convenience method for parsing cron expressions
when you're confident the input is valid and want to avoid handling
the Result type.

**Example**

```ts
import { Cron } from "effect"

// At 04:00 on every day-of-month from 8 through 14
const cron = Cron.parseUnsafe("0 0 4 8-14 * *")

// With timezone
const cronWithTz = Cron.parseUnsafe("0 0 9 * * *", "America/New_York")

// This would throw an error
// const invalid = Cron.parseUnsafe("invalid expression")
```

**Signature**

```ts
declare const parseUnsafe: (cron: string, tz?: DateTime.TimeZone | string) => Cron
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cron.ts#L546)

Since v2.0.0