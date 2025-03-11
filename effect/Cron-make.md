## make

Creates a `Cron` instance.

**Signature**

```ts
declare const make: (values: { readonly seconds?: Iterable<number> | undefined; readonly minutes: Iterable<number>; readonly hours: Iterable<number>; readonly days: Iterable<number>; readonly months: Iterable<number>; readonly weekdays: Iterable<number>; readonly tz?: DateTime.TimeZone | undefined; }) => Cron
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cron.ts#L120)

Since v2.0.0