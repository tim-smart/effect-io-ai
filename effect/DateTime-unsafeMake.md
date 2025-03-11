## unsafeMake

Create a `DateTime` from one of the following:

- A `DateTime`
- A `Date` instance (invalid dates will throw an `IllegalArgumentException`)
- The `number` of milliseconds since the Unix epoch
- An object with the parts of a date
- A `string` that can be parsed by `Date.parse`

**Example**

```ts
import { DateTime } from "effect"

// from Date
DateTime.unsafeMake(new Date())

// from parts
DateTime.unsafeMake({ year: 2024 })

// from string
DateTime.unsafeMake("2024-01-01")
```

**Signature**

```ts
declare const unsafeMake: <A extends DateTime.Input>(input: A) => DateTime.PreserveZone<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/DateTime.ts#L326)

Since v3.6.0