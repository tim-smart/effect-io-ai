Package: `effect`<br />
Module: `Cron`<br />

## Cron.unsafeParse

Parses a cron expression into a `Cron` instance.

**Details**

This function takes a cron expression as a string and attempts to parse it
into a `Cron` instance. If the expression is valid, the resulting `Cron`
instance will represent the schedule defined by the cron expression.

If the expression is invalid, the function throws a `ParseError`.

You can optionally provide a time zone (`tz`) to interpret the cron
expression in a specific time zone. If no time zone is provided, the cron
expression will use the default time zone.

**Example**

```ts
import { Cron } from "effect"

// At 04:00 on every day-of-month from 8 through 14.
console.log(Cron.unsafeParse("0 4 8-14 * *"))
// Output:
// {
//   _id: 'Cron',
//   tz: { _id: 'Option', _tag: 'None' },
//   seconds: [ 0 ],
//   minutes: [ 0 ],
//   hours: [ 4 ],
//   days: [
//      8,  9, 10, 11,
//     12, 13, 14
//   ],
//   months: [],
//   weekdays: []
// }
```

**Signature**

```ts
declare const unsafeParse: (cron: string, tz?: DateTime.TimeZone | string) => Cron
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cron.ts#L317)

Since v2.0.0