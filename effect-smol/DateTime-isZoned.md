Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.isZoned

Checks if a `DateTime` is a zoned `DateTime` (has time zone information).

**When to use**

Use to narrow a known `DateTime` before reading its zone or passing it to
APIs that require `DateTime.Zoned`.

**See**

- `isUtc` for narrowing to UTC date-times
- `match` for handling both UTC and zoned cases

**Signature**

```ts
declare const isZoned: (self: DateTime) => self is Zoned
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L537)

Since v3.6.0