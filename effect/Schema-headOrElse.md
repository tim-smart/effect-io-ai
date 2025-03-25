Package: `effect`<br />
Module: `Schema`<br />

## Schema.headOrElse

Retrieves the first element of a `ReadonlyArray`.

If the array is empty, it returns the `fallback` argument if provided; otherwise, it fails.

**Signature**

```ts
declare const headOrElse: { <S extends Schema.Any, A extends ReadonlyArray<unknown>>(fallback?: LazyArg<A[number]>): (self: S & Schema<A, Schema.Encoded<S>, Schema.Context<S>>) => transform<S, SchemaClass<A[number]>>; <S extends Schema.Any, A extends ReadonlyArray<unknown>>(self: S & Schema<A, Schema.Encoded<S>, Schema.Context<S>>, fallback?: LazyArg<A[number]>): transform<S, SchemaClass<A[number]>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L6574)

Since v3.10.0