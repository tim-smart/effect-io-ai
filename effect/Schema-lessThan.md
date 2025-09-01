Package: `effect`<br />
Module: `Schema`<br />

## Schema.lessThan

This filter checks whether the provided number is less than the specified maximum.

**Signature**

```ts
declare const lessThan: <S extends Schema.Any>(exclusiveMaximum: number, annotations?: Annotations.Filter<Schema.Type<S>>) => <A extends number>(self: S & Schema<A, Schema.Encoded<S>, Schema.Context<S>>) => filter<S>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L5132)

Since v3.10.0