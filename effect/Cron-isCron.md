Package: `effect`<br />
Module: `Cron`<br />

## Cron.isCron

Checks whether a given value is a Cron instance.

**When to use**

Use to narrow an unknown value before treating it as a `Cron` schedule.

**Details**

This function is a type guard that determines whether the provided
value is a valid Cron instance by checking for the presence of the
Cron type identifier.

**Example** (Checking cron values)

```ts
import { Cron } from "effect"

const cron = Cron.make({
  minutes: [0],
  hours: [9],
  days: [1, 15],
  months: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12],
  weekdays: [1, 2, 3, 4, 5]
})

console.log(Cron.isCron(cron)) // true
console.log(Cron.isCron({})) // false
console.log(Cron.isCron("not a cron")) // false
```

**See**

- `make` for constructing a `Cron` value directly
- `parse` for constructing a `Cron` value from a string

**Signature**

```ts
declare const isCron: (u: unknown) => u is Cron
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cron.ts#L245)

Since v2.0.0