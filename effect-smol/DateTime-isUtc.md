Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.isUtc

Checks whether a `DateTime` is a UTC `DateTime` (no time zone information).

**When to use**

Use to narrow a `DateTime` before passing it to code that requires a UTC
value without an associated time zone.

**See**

- `isZoned` for narrowing to zoned date-times
- `match` for handling both UTC and zoned cases

**Signature**

```ts
declare const isUtc: (self: DateTime) => self is Utc
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L481)

Since v3.6.0