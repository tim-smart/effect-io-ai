Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.isTimeZoneNamed

Checks if a value is a named `TimeZone` (IANA time zone).

**When to use**

Use to narrow an unknown value to the `TimeZone.Named` variant before
reading named-zone fields such as `id`.

**See**

- `isTimeZone` for checking either time zone variant
- `isTimeZoneOffset` for narrowing to fixed-offset time zones

**Signature**

```ts
declare const isTimeZoneNamed: (u: unknown) => u is TimeZone.Named
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L505)

Since v3.6.0