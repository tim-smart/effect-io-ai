Package: `effect`<br />
Module: `Model`<br />

## Model.optionalOption

Schema type for an optional object key whose encoded value may be missing or
null and whose decoded value is an `Option`.

**Signature**

```ts
export interface optionalOption<S extends Schema.Top>
  extends Schema.decodeTo<Schema.Option<Schema.toType<S>>, Schema.optionalKey<Schema.NullOr<S>>>
{}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Model.ts#L292)

Since v4.0.0