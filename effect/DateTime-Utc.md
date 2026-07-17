Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.Utc

Represents a `DateTime` stored as an absolute UTC instant with no associated
time zone.

**Details**

Use `DateTime.isUtc` to narrow a `DateTime` to this variant.

**Signature**

```ts
export interface Utc extends DateTime.Proto {
  readonly _tag: "Utc"
  readonly epochMilliseconds: number
  partsUtc: DateTime.PartsWithWeekday | undefined
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/DateTime.ts#L50)

Since v3.6.0