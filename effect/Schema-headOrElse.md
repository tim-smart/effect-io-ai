# headOrElse

Retrieves the first element of a `ReadonlyArray`.

If the array is empty, it returns the `fallback` argument if provided; otherwise, it fails.

To import and use `headOrElse` from the "Schema" module:

```ts
import * as Schema from "effect/Schema"
// Can be accessed like this
Schema.headOrElse
```

**Signature**

```ts
export declare const headOrElse: {
  <S extends Schema.Any, A extends ReadonlyArray<unknown>>(
    fallback?: LazyArg<A[number]>
  ): (self: S & Schema<A, Schema.Encoded<S>, Schema.Context<S>>) => transform<S, SchemaClass<A[number]>>
  <S extends Schema.Any, A extends ReadonlyArray<unknown>>(
    self: S & Schema<A, Schema.Encoded<S>, Schema.Context<S>>,
    fallback?: LazyArg<A[number]>
  ): transform<S, SchemaClass<A[number]>>
}
```
