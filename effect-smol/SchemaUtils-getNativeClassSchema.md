Package: `effect`<br />
Module: `SchemaUtils`<br />

## SchemaUtils.getNativeClassSchema

Builds an experimental schema for instances of a native class using a struct
schema as the encoded representation.

**Details**

Decoding constructs `new constructor(props)` from the encoded fields.
Encoding uses the instance as the encoded shape, so the class should expose
properties compatible with the provided encoding schema.

**Signature**

```ts
declare const getNativeClassSchema: <C extends new (...args: any) => any, S extends Schema.Struct<Schema.Struct.Fields>>(constructor: C, options: { readonly encoding: S; readonly annotations?: Schema.Annotations.Declaration<InstanceType<C>>; }) => Schema.decodeTo<Schema.instanceOf<InstanceType<C>, S["Iso"]>, S>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaUtils.ts#L37)

Since v4.0.0