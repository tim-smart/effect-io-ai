Package: `effect`<br />
Module: `McpSchema`<br />

## McpSchema.optionalWithDefault

Schema type returned by `optionalWithDefault`.

It represents an optional struct field that supplies a default value when the
field is absent during decoding or construction.

**Signature**

```ts
export interface optionalWithDefault<S extends Schema.Top & Schema.WithoutConstructorDefault>
  extends Schema.withConstructorDefault<Schema.decodeTo<Schema.toType<Schema.optionalKey<S>>, Schema.optionalKey<S>>>
{}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/McpSchema.ts#L54)

Since v4.0.0