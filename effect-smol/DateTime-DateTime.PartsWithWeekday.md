Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.DateTime.PartsWithWeekday

Calendar and time components of a `DateTime`, including the weekday.

**Details**

`month` is one-based (`1` for January through `12` for December), and
`weekDay` follows JavaScript `Date#getUTCDay` numbering (`0` for Sunday
through `6` for Saturday).

**Signature**

```ts
export interface PartsWithWeekday {
    readonly millisecond: number
    readonly second: number
    readonly minute: number
    readonly hour: number
    readonly day: number
    readonly weekDay: number
    readonly month: number
    readonly year: number
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L212)

Since v3.6.0