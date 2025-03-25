Package: `effect`<br />
Module: `Schema`<br />

## Schema.headNonEmpty

Get the first element of a `NonEmptyReadonlyArray`.

**Signature**

```ts
declare const headNonEmpty: <S extends Schema.Any, A extends array_.NonEmptyReadonlyArray<unknown>>(self: S & Schema<A, Schema.Encoded<S>, Schema.Context<S>>) => transform<S, SchemaClass<A[number]>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L6552)

Since v3.12.0