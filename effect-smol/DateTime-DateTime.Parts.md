Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.DateTime.Parts

Calendar and time components of a `DateTime`, without weekday information.

`month` is one-based (`1` for January through `12` for December).

**Signature**

```ts
export interface Parts {
    readonly millisecond: number
    readonly second: number
    readonly minute: number
    readonly hour: number
    readonly day: number
    readonly month: number
    readonly year: number
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L220)

Since v3.6.0