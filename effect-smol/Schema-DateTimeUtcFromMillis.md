Package: `effect`<br />
Module: `Schema`<br />

## Schema.DateTimeUtcFromMillis

Type-level representation of `DateTimeUtcFromMillis`.

**Signature**

```ts
export interface DateTimeUtcFromMillis extends decodeTo<instanceOf<DateTime.Utc>, Number> {
  readonly "Rebuild": DateTimeUtcFromMillis
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L11468)

Since v4.0.0