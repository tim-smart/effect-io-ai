Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.zoneMakeNamed

Create a named time zone from a IANA time zone identifier.

If the time zone is invalid, `None` will be returned.

**Example**

```ts
import { DateTime } from "effect"

const validZone = DateTime.zoneMakeNamed("Europe/London")
console.log(validZone._tag === "Some") // true

const invalidZone = DateTime.zoneMakeNamed("Invalid/Zone")
console.log(invalidZone._tag === "None") // true
```

**Signature**

```ts
declare const zoneMakeNamed: (zoneId: string) => Option.Option<TimeZone.Named>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L778)

Since v3.6.0