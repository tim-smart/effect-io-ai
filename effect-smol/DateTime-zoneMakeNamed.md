Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.zoneMakeNamed

Create a named time zone from a IANA time zone identifier.

If the time zone is invalid, `None` will be returned.

**Example**

```ts
import { DateTime } from "effect"

const validZone = DateTime.zoneMakeNamed("Europe/London")
console.log(validZone !== undefined) // true

const invalidZone = DateTime.zoneMakeNamed("Invalid/Zone")
console.log(invalidZone === undefined) // true
```

**Signature**

```ts
declare const zoneMakeNamed: (zoneId: string) => TimeZone.Named | undefined
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L819)

Since v3.6.0