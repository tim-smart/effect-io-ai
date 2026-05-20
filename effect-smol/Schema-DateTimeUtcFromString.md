Package: `effect`<br />
Module: `Schema`<br />

## Schema.DateTimeUtcFromString

Schema interface for `DateTimeUtcFromString`, a transformation from date-time
strings to `DateTime.Utc`.

**Signature**

```ts
export interface DateTimeUtcFromString extends decodeTo<DateTimeUtc, String> {
  readonly "Rebuild": DateTimeUtcFromString
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L10932)

Since v4.0.0