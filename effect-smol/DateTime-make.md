Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.make

Creates a `DateTime` safely from supported input values.

**Details**

- A `DateTime`
- A JavaScript `Date`
- The number of milliseconds since the Unix epoch
- An object with date and time parts
- A string that can be parsed as a date

Returns `Some` with the constructed `DateTime` when the input is valid, or
`None` when construction would fail, including invalid `Date` instances or
unparseable strings.

**Example** (Creating optional DateTime values)

```ts
import { DateTime } from "effect"

// from Date
const fromDate = DateTime.make(new Date("2024-01-01T12:00:00Z"))
console.log(fromDate._tag) // "Some"

// from parts
const fromParts = DateTime.make({ year: 2024 })
console.log(fromParts._tag) // "Some"

// from string
const fromString = DateTime.make("2024-01-01")
console.log(fromString._tag) // "Some"

const invalid = DateTime.make("not a date")
console.log(invalid._tag) // "None"
```

**Signature**

```ts
declare const make: <A extends DateTime.Input>(input: A) => Option.Option<DateTime.PreserveZone<A>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L827)

Since v3.6.0