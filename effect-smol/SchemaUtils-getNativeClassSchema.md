Package: `effect`<br />
Module: `SchemaUtils`<br />

## SchemaUtils.getNativeClassSchema

Builds an experimental schema for instances of a native class using a struct
schema as the encoded representation.

**When to use**

Use when you need a schema for an existing native class while keeping a
`Struct` schema as its encoded representation.

**Details**

Decoding constructs `new constructor(props)` from the encoded fields.
Encoding uses the instance as the encoded shape, so the class should expose
properties compatible with the provided encoding schema.

**See**

- `Schema.instanceOf` for validating existing class instances without a struct encoding
- `Schema.Class` for defining schema-backed classes directly
- `Schema.ErrorClass` for defining schema-backed error classes

**Signature**

```ts
declare const getNativeClassSchema: <C extends new (...args: any) => any, S extends Schema.Struct<Schema.Struct.Fields>>(constructor: C, options: { readonly encoding: S; readonly annotations?: Schema.Annotations.Declaration<InstanceType<C>>; }) => Schema.decodeTo<Schema.instanceOf<InstanceType<C>, S["Iso"]>, S>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaUtils.ts#L36)

Since v4.0.0