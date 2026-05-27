Package: `effect`<br />
Module: `Schema`<br />

## Schema.DateTimeZonedFromString

Schema interface for `DateTimeZonedFromString`, a transformation between
zoned date-time strings and `DateTime.Zoned` values.

**Signature**

```ts
export interface DateTimeZonedFromString extends decodeTo<DateTimeZoned, String> {
  readonly "Rebuild": DateTimeZonedFromString
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L11617)

Since v4.0.0