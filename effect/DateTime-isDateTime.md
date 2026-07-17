Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.isDateTime

Checks whether a value is a `DateTime`.

**When to use**

Use to narrow an unknown value before treating it as a `DateTime`.

**See**

- `isUtc` for narrowing a known `DateTime` to UTC
- `isZoned` for narrowing a known `DateTime` to zoned

**Signature**

```ts
declare const isDateTime: (u: unknown) => u is DateTime
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/DateTime.ts#L417)

Since v3.6.0