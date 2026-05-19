Package: `effect`<br />
Module: `Schema`<br />

## Schema.DateTimeUtc

Schema interface for `DateTimeUtc`, representing `DateTime.Utc` values with
UTC ISO string JSON encoding.

**Signature**

```ts
export interface DateTimeUtc extends declare<DateTime.Utc> {
  readonly "Rebuild": DateTimeUtc
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L10520)

Since v3.10.0