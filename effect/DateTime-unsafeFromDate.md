Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.unsafeFromDate

Create a `DateTime` from a `Date`.

If the `Date` is invalid, an `IllegalArgumentException` will be thrown.

**Signature**

```ts
declare const unsafeFromDate: (date: Date) => Utc
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/DateTime.ts#L345)

Since v3.6.0