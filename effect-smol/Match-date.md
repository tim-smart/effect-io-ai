Package: `effect`<br />
Module: `Match`<br />

## Match.date

Matches values that are instances of `Date`.

**Details**

This predicate refines unknown values to Date instances, allowing pattern
matching on Date objects. It only matches actual Date instances, not
date strings or timestamps.

**Example** (Matching Date instances)

```ts
import { Match } from "effect"

const processDateValue = Match.type<unknown>().pipe(
  Match.when(Match.date, (date) => {
    if (isNaN(date.getTime())) {
      return "Invalid date"
    }
    return `Date: ${date.toISOString().split("T")[0]}`
  }),
  Match.when(Match.string, (str) => `Date string: ${str}`),
  Match.orElse(() => "Not a date-related value")
)

console.log(processDateValue(new Date("2024-01-01"))) // "Date: 2024-01-01"
console.log(processDateValue(new Date("invalid"))) // "Invalid date"
console.log(processDateValue("2024-01-01")) // "Date string: 2024-01-01"
console.log(processDateValue(1704067200000)) // "Not a date-related value"
```

**Signature**

```ts
declare const date: Predicate.Refinement<unknown, Date>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Match.ts#L1526)

Since v4.0.0