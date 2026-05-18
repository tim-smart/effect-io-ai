Package: `effect`<br />
Module: `Schema`<br />

## Schema.TimeZone

Schema interface for `TimeZone`, representing `DateTime.TimeZone` values
encoded as either IANA identifiers or numeric offset strings.

**Signature**

```ts
export interface TimeZone extends declare<DateTime.TimeZone> {
  readonly "Rebuild": TimeZone
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L10633)

Since v4.0.0