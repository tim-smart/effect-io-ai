Package: `effect`<br />
Module: `Cron`<br />

## Cron.parseUnsafe

Parses a cron expression into a `Cron` instance, throwing on failure.

**When to use**

Use this when the input is expected to be valid and you want to avoid
handling the `Result` type.

**Example** (Parsing cron expressions unsafely)

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cron.ts#L611)

Since v4.0.0