Package: `effect`<br />
Module: `Schema`<br />

## Schema.DateTimeZoned

Schema interface for `DateTimeZoned`, representing `DateTime.Zoned` values
with ISO offset or named-zone string JSON encoding.

**Signature**

```ts
export interface DateTimeZoned extends declare<DateTime.Zoned> {
  readonly "Rebuild": DateTimeZoned
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L11786)

Since v3.10.0