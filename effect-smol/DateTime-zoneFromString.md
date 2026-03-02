Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.zoneFromString

Try to parse a `TimeZone` from a string.

Supports both IANA time zone identifiers and offset formats like "+03:00".

**Example**

```ts
import { DateTime } from "effect"

const namedZone = DateTime.zoneFromString("Europe/London")
const offsetZone = DateTime.zoneFromString("+03:00")
const invalid = DateTime.zoneFromString("invalid")

console.log(namedZone !== undefined) // true
console.log(offsetZone !== undefined) // true
console.log(invalid === undefined) // true
```

**Signature**

```ts
declare const zoneFromString: (zone: string) => TimeZone | undefined
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L886)

Since v3.6.0