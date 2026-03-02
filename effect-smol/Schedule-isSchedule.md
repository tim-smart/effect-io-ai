Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.isSchedule

Type guard that checks if a value is a Schedule.

**Example**

```ts
import { Schedule } from "effect"

const schedule = Schedule.exponential("100 millis")
const notSchedule = { foo: "bar" }

console.log(Schedule.isSchedule(schedule)) // true
console.log(Schedule.isSchedule(notSchedule)) // false
console.log(Schedule.isSchedule(null)) // false
console.log(Schedule.isSchedule(undefined)) // false
```

**Signature**

```ts
declare const isSchedule: (u: unknown) => u is Schedule<unknown, never, unknown, unknown>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schedule.ts#L320)

Since v2.0.0