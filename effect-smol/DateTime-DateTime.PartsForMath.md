Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.DateTime.PartsForMath

Plural amount fields accepted by `DateTime.add` and `DateTime.subtract`.

Each field represents the number of units to add or subtract for that part.

**Signature**

```ts
export interface PartsForMath {
    readonly milliseconds: number
    readonly seconds: number
    readonly minutes: number
    readonly hours: number
    readonly days: number
    readonly weeks: number
    readonly months: number
    readonly years: number
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L238)

Since v3.6.0