## head

Get the first element of a `ReadonlyArray`, or `None` if the array is empty.

**Signature**

```ts
declare const head: <S extends Schema.Any, A extends ReadonlyArray<unknown>>(self: S & Schema<A, Schema.Encoded<S>, Schema.Context<S>>) => transform<S, OptionFromSelf<SchemaClass<A[number]>>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L6483)

Since v3.10.0