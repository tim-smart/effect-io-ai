Package: `effect`<br />
Module: `Schema`<br />

## Schema.DateTimeUtcFromMillis

Schema interface for `DateTimeUtcFromMillis`, a transformation between epoch
milliseconds and `DateTime.Utc` values.

**Signature**

```ts
export interface DateTimeUtcFromMillis extends decodeTo<instanceOf<DateTime.Utc>, Number> {
  readonly "Rebuild": DateTimeUtcFromMillis
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L10969)

Since v4.0.0