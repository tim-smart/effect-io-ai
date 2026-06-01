Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.makeZonedFromString

Parses an ISO zoned date-time string into a `DateTime.Zoned` safely.

**Details**

Accepts named-zone strings such as
`YYYY-MM-DDTHH:mm:ss.sss+HH:MM[Time/Zone]` and offset-only strings such as
`YYYY-MM-DDTHH:mm:ss.sss+HH:MM`. Returns `None` when the input cannot be
parsed.

**Example** (Parsing zoned DateTime strings)

```ts
import { DateTime } from "effect"

const result1 = DateTime.makeZonedFromString(
  "2024-01-01T12:00:00+02:00[Europe/Berlin]"
)
console.log(result1._tag === "Some") // true

const result2 = DateTime.makeZonedFromString("2024-01-01T12:00:00Z")
console.log(result2._tag === "Some") // true

const invalid = DateTime.makeZonedFromString("invalid")
console.log(invalid._tag === "None") // true
```

**Signature**

```ts
declare const makeZonedFromString: (input: string) => Option.Option<Zoned>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L859)

Since v3.6.0