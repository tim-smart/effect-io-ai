Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.DateTime.InstantWithZone

Object input representing an absolute instant plus a time zone identifier.

**Details**

`DateTime.makeZoned` and `DateTime.makeZonedUnsafe` use `timeZoneId` when
no explicit `timeZone` option is supplied.

**Signature**

```ts
export interface InstantWithZone {
    readonly timeZoneId: string
    readonly epochMilliseconds: number
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L246)

Since v4.0.0