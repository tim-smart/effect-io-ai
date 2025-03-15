Package: `effect`<br />
Module: `Schema`<br />

## Schema.greaterThan

This filter checks whether the provided number is greater than the specified minimum.

**Signature**

```ts
declare const greaterThan: <S extends Schema.Any>(exclusiveMinimum: number, annotations?: Annotations.Filter<Schema.Type<S>>) => <A extends number>(self: S & Schema<A, Schema.Encoded<S>, Schema.Context<S>>) => filter<S>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L5010)

Since v3.10.0