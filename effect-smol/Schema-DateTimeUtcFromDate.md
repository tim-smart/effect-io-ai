Package: `effect`<br />
Module: `Schema`<br />

## Schema.DateTimeUtcFromDate

Schema interface for `DateTimeUtcFromDate`, a transformation from valid
JavaScript `Date` values to `DateTime.Utc`.

**Signature**

```ts
export interface DateTimeUtcFromDate extends decodeTo<DateTimeUtc, Date> {
  readonly "Rebuild": DateTimeUtcFromDate
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L11458)

Since v3.12.0