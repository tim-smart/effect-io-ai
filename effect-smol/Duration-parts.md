Package: `effect`<br />
Module: `Duration`<br />

## Duration.parts

Converts a `Duration` to its parts.

**Example**

```ts
import { Duration } from "effect"

// Create a complex duration by adding multiple parts
const duration = Duration.sum(
  Duration.sum(
    Duration.sum(Duration.days(1), Duration.hours(2)),
    Duration.sum(Duration.minutes(30), Duration.seconds(45))
  ),
  Duration.millis(123)
)
const components = Duration.parts(duration)
console.log(components)
// {
//   days: 1,
//   hours: 2,
//   minutes: 30,
//   seconds: 45,
//   millis: 123,
//   nanos: 0
// }

const complex = Duration.sum(Duration.hours(25), Duration.minutes(90))
const complexParts = Duration.parts(complex)
console.log(complexParts)
// {
//   days: 1,
//   hours: 2,
//   minutes: 30,
//   seconds: 0,
//   millis: 0,
//   nanos: 0
// }
```

**Signature**

```ts
declare const parts: (self: Duration) => { days: number; hours: number; minutes: number; seconds: number; millis: number; nanos: number; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Duration.ts#L1484)

Since v3.8.0