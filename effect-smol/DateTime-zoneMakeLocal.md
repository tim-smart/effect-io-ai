Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.zoneMakeLocal

Create a named time zone from the system's local time zone.

**Details**

This uses the system's configured time zone, which may vary depending
on the runtime environment.

**Example** (Creating local time zones)

```ts
import { DateTime } from "effect"

const localZone = DateTime.zoneMakeLocal()
console.log(DateTime.zoneToString(localZone)) // Output depends on system time zone
```

**Signature**

```ts
declare const zoneMakeLocal: () => TimeZone.Named
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L1076)

Since v3.6.0