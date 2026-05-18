Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.TimeZone.Offset

Fixed-offset time zone.

The `offset` is measured in milliseconds from UTC. Positive offsets are
ahead of UTC, and negative offsets are behind UTC.

**Signature**

```ts
export interface Offset extends Proto {
    readonly _tag: "Offset"
    readonly offset: number
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L327)

Since v3.6.0