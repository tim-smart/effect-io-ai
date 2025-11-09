Package: `effect`<br />
Module: `Schema`<br />

## Schema.uppercased

Verifies that a string is uppercased.

**Signature**

```ts
declare const uppercased: <S extends Schema.Any>(annotations?: Annotations.Filter<Schema.Type<S>>) => <A extends string>(self: S & Schema<A, Schema.Encoded<S>, Schema.Context<S>>) => filter<S>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L4557)

Since v3.10.0