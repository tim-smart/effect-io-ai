Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.zoneUnsafeMakeNamed

Attempt to create a named time zone from a IANA time zone identifier.

If the time zone is invalid, an `IllegalArgumentException` will be thrown.

**Signature**

```ts
declare const zoneUnsafeMakeNamed: (zoneId: string) => TimeZone.Named
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/DateTime.ts#L604)

Since v3.6.0