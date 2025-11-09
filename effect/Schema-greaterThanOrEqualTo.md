Package: `effect`<br />
Module: `Schema`<br />

## Schema.greaterThanOrEqualTo

This filter checks whether the provided number is greater than or equal to the specified minimum.

**Signature**

```ts
declare const greaterThanOrEqualTo: <S extends Schema.Any>(minimum: number, annotations?: Annotations.Filter<Schema.Type<S>>) => <A extends number>(self: S & Schema<A, Schema.Encoded<S>, Schema.Context<S>>) => filter<S>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L5042)

Since v3.10.0