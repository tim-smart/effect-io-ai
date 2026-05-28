Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.isTimeZoneOffset

Checks whether a value is an offset-based `TimeZone`.

**When to use**

Use when narrowing an unknown or union `TimeZone` value to the fixed-offset
variant before reading its offset in milliseconds.

**See**

- `isTimeZone` for checking either time zone variant
- `isTimeZoneNamed` for narrowing to named time zones

**Signature**

```ts
declare const isTimeZoneOffset: (u: unknown) => u is TimeZone.Offset
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L489)

Since v3.6.0