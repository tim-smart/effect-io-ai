# parse

Parses a cron expression into a `Cron` instance.

To import and use `parse` from the "Cron" module:

```ts
import * as Cron from "effect/Cron"
// Can be accessed like this
Cron.parse
```

**Example**

```ts
import * as Cron from "effect/Cron"
import * as Either from "effect/Either"

// At 04:00 on every day-of-month from 8 through 14.
assert.deepStrictEqual(
  Cron.parse("0 4 8-14 * *"),
  Either.right(
    Cron.make({
      minutes: [0],
      hours: [4],
      days: [8, 9, 10, 11, 12, 13, 14],
      months: [],
      weekdays: []
    })
  )
)
```

**Signature**

```ts
export declare const parse: (cron: string) => Either.Either<Cron, ParseError>
```
