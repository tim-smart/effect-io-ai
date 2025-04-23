Package: `effect`<br />
Module: `Schema`<br />

## Schema.lowercased

Verifies that a string is lowercased.

**Signature**

```ts
declare const lowercased: <S extends Schema.Any>(annotations?: Annotations.Filter<Schema.Type<S>>) => <A extends string>(self: S & Schema<A, Schema.Encoded<S>, Schema.Context<S>>) => filter<S>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L4521)

Since v3.10.0