Package: `effect`<br />
Module: `Schema`<br />

## Schema.between

This filter checks whether the provided number falls within the specified minimum and maximum values.

**Signature**

```ts
declare const between: <S extends Schema.Any>(minimum: number, maximum: number, annotations?: Annotations.Filter<Schema.Type<S>>) => <A extends number>(self: S & Schema<A, Schema.Encoded<S>, Schema.Context<S>>) => filter<S>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L5196)

Since v3.10.0