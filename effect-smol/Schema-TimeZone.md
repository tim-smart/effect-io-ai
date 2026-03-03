Package: `effect`<br />
Module: `Schema`<br />

## Schema.TimeZone

A schema for `DateTime.TimeZone` values.

**Default JSON serializer**

- encodes `DateTime.TimeZone` as a string (IANA identifier or offset like
  `+03:00`)

**Signature**

```ts
declare const TimeZone: TimeZone
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L7916)

Since v4.0.0