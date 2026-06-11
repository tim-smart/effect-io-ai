Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.TimeZone.Proto

Shared protocol implemented by all `TimeZone` values.

**Details**

Provides the `TimeZone` type identifier and inspection support.

**Signature**

```ts
export interface Proto extends Inspectable {
    readonly [TimeZoneTypeId]: typeof TimeZoneTypeId
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L296)

Since v3.6.0