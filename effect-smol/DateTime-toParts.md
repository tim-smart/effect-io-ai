Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.toParts

Get the different parts of a `DateTime` as an object.

The parts will be time zone adjusted if the `DateTime` is zoned.

**Example**

```ts
import { DateTime } from "effect"

const dt = DateTime.makeUnsafe("2024-01-01T12:30:45.123Z")
const parts = DateTime.toParts(dt)

console.log(parts)
// {
//   year: 2024,
//   month: 1,
//   day: 1,
//   hours: 12,
//   minutes: 30,
//   seconds: 45,
//   millis: 123,
//   weekDay: 1 // Monday
// }
```

**Signature**

```ts
declare const toParts: (self: DateTime) => DateTime.PartsWithWeekday
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L1365)

Since v3.6.0