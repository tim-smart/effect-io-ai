Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.makeUnsafe

Create a `DateTime` from one of the following:

- A `DateTime`
- A `Date` instance (invalid dates will throw an `IllegalArgumentError`)
- The `number` of milliseconds since the Unix epoch
- An object with the parts of a date
- A `string` that can be parsed by `Date.parse`

**Example** (Creating DateTime values unsafely)

```ts
import { DateTime } from "effect"

// from Date
const fromDate = DateTime.makeUnsafe(new Date("2024-01-01T12:00:00Z"))
console.log(DateTime.formatIso(fromDate)) // "2024-01-01T12:00:00.000Z"

// from parts
const fromParts = DateTime.makeUnsafe({ year: 2024 })
console.log(DateTime.formatIso(fromParts)) // "2024-01-01T00:00:00.000Z"

// from string
const fromString = DateTime.makeUnsafe("2024-01-01")
console.log(DateTime.formatIso(fromString)) // "2024-01-01T00:00:00.000Z"
```

**Signature**

```ts
declare const makeUnsafe: <A extends DateTime.Input>(input: A) => DateTime.PreserveZone<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L604)

Since v4.0.0