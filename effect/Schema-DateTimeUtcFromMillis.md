Package: `effect`<br />
Module: `Schema`<br />

## Schema.DateTimeUtcFromMillis

Type-level representation of `DateTimeUtcFromMillis`.

**Signature**

```ts
export interface DateTimeUtcFromMillis extends decodeTo<instanceOf<DateTime.Utc>, Int> {
  readonly "Rebuild": DateTimeUtcFromMillis
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L13557)

Since v4.0.0