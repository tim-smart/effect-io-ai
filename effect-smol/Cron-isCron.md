Package: `effect`<br />
Module: `Cron`<br />

## Cron.isCron

Checks if a given value is a Cron instance.

This function is a type guard that determines whether the provided
value is a valid Cron instance by checking for the presence of the
Cron type identifier.

**Example**

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

**Signature**

```ts
declare const isCron: (u: unknown) => u is Cron
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cron.ts#L195)

Since v2.0.0