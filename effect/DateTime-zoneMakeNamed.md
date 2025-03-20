Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.zoneMakeNamed

Create a named time zone from a IANA time zone identifier. If the time zone
is invalid, `None` will be returned.

**Signature**

```ts
declare const zoneMakeNamed: (zoneId: string) => Option.Option<TimeZone.Named>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/DateTime.ts#L553)

Since v3.6.0