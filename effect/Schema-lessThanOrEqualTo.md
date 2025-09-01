Package: `effect`<br />
Module: `Schema`<br />

## Schema.lessThanOrEqualTo

This schema checks whether the provided number is less than or equal to the specified maximum.

**Signature**

```ts
declare const lessThanOrEqualTo: <S extends Schema.Any>(maximum: number, annotations?: Annotations.Filter<Schema.Type<S>>) => <A extends number>(self: S & Schema<A, Schema.Encoded<S>, Schema.Context<S>>) => filter<S>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L5163)

Since v3.10.0