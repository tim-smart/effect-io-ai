Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.isTimeZone

Checks whether a value is a `TimeZone`.

**When to use**

Use to narrow unknown input to any `TimeZone` before passing it to APIs that
accept either fixed-offset or named time zones.

**See**

- `isTimeZoneOffset` for narrowing to fixed-offset time zones
- `isTimeZoneNamed` for narrowing to named time zones

**Signature**

```ts
declare const isTimeZone: (u: unknown) => u is TimeZone
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L473)

Since v3.6.0