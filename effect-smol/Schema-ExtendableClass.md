Package: `effect`<br />
Module: `Schema`<br />

## Schema.ExtendableClass

A `Class` that additionally exposes an `extend` method, allowing
subclasses to be derived with extra fields while inheriting all parent
fields and validation.

**Signature**

```ts
export interface ExtendableClass<Self, S extends Top & { readonly fields: Struct.Fields }, Inherited>
  extends Class<Self, S, Inherited>
{
  extend<Extended, Static = {}, Brand = {}>(
    identifier: string
  ): <NewFields extends Struct.Fields>(
    fields: NewFields,
    annotations?: Annotations.Declaration<Extended, readonly [Struct<Simplify<Assign<S["fields"], NewFields>>>]>
  ) => AddStaticMembers<
    ExtendableClass<Extended, Struct<Simplify<Assign<S["fields"], NewFields>>>, Self & Brand>,
    Static
  >
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L9824)

Since v4.0.0