Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.make

Create a `DateTime` from one of the following:

- A `DateTime`
- A `Date` instance (invalid dates will throw an `IllegalArgumentException`)
- The `number` of milliseconds since the Unix epoch
- An object with the parts of a date
- A `string` that can be parsed by `Date.parse`

If the input is invalid, `None` will be returned.

**Example**

```ts
import { DateTime } from "effect"

// from Date
DateTime.make(new Date())

// from parts
DateTime.make({ year: 2024 })

// from string
DateTime.make("2024-01-01")
```

**Signature**

```ts
declare const make: <A extends DateTime.Input>(input: A) => Option.Option<DateTime.PreserveZone<A>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/DateTime.ts#L464)

Since v3.6.0