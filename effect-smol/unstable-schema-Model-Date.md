Package: `effect`<br />
Module: `Model`<br />

## Model.Date

Schema type for a `DateTime.Utc` date-only value encoded as a `YYYY-MM-DD`
string.

**Signature**

```ts
export interface Date extends Schema.decodeTo<Schema.instanceOf<DateTime.Utc>, Schema.String> {}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Model.ts#L408)

Since v4.0.0