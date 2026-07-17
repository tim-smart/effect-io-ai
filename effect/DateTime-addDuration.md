Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.addDuration

Adds the given `Duration` to a `DateTime`.

**When to use**

Use to move a `DateTime` by an elapsed duration such as minutes, seconds, or
milliseconds.

**Details**

The duration is converted to milliseconds and added to the epoch
milliseconds. Zoned values keep their original time zone.

**Gotchas**

This is elapsed-time arithmetic, not calendar-aware local date arithmetic.
Use `add` when adding days, weeks, months, or years should account for the
date/time zone rules.

**Example** (Adding durations)

```ts
import { DateTime } from "effect"

// add 5 minutes
DateTime.makeUnsafe(0).pipe(
  DateTime.addDuration("5 minutes")
)
```

**See**

- `add` for calendar-aware date/time part arithmetic
- `subtractDuration` for subtracting an elapsed duration

**Signature**

```ts
declare const addDuration: { (duration: Duration.Input): <A extends DateTime>(self: A) => A; <A extends DateTime>(self: A, duration: Duration.Input): A; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/DateTime.ts#L2294)

Since v3.6.0