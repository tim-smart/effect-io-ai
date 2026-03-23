Package: `effect`<br />
Module: `Schema`<br />

## Schema.ErrorClass

Interface for schema-backed error classes created with `ErrorClass`.
Extends `ExtendableClass` and is also a `YieldableError`, so instances
can be yielded inside `Effect.gen` as failures.

**Signature**

```ts
export interface ErrorClass<Self, S extends Top & { readonly fields: Struct.Fields }, Inherited>
  extends ExtendableClass<Self, S, Inherited>
{}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L10130)

Since v4.0.0