Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.Zoned

Represents a `DateTime` with an associated `TimeZone`.

**Details**

A zoned value still represents an absolute instant through
`epochMilliseconds`, while the time zone is used for wall-clock parts,
formatting, and zone-aware transformations.

**Signature**

```ts
export interface Zoned extends DateTime.Proto {
  readonly _tag: "Zoned"
  readonly epochMilliseconds: number
  readonly zone: TimeZone
  adjustedEpochMilliseconds: number | undefined
  partsAdjusted: DateTime.PartsWithWeekday | undefined
  partsUtc: DateTime.PartsWithWeekday | undefined
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L68)

Since v3.6.0