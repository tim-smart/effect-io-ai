Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.zoneMakeLocal

Create a named time zone from the system's local time zone.

This uses the system's configured time zone, which may vary depending
on the runtime environment.

**Example**

```ts
import { DateTime } from "effect"

const localZone = DateTime.zoneMakeLocal()
const now = DateTime.nowUnsafe()
const localTime = DateTime.setZone(now, localZone)

console.log(DateTime.formatIsoZoned(localTime))
```

**Signature**

```ts
declare const zoneMakeLocal: () => TimeZone.Named
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L822)

Since v3.6.0