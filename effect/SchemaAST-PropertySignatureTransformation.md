Package: `effect`<br />
Module: `SchemaAST`<br />

## SchemaAST.PropertySignatureTransformation

Represents a `PropertySignature -> PropertySignature` transformation

The semantic of `decode` is:
- `none()` represents the absence of the key/value pair
- `some(value)` represents the presence of the key/value pair

The semantic of `encode` is:
- `none()` you don't want to output the key/value pair
- `some(value)` you want to output the key/value pair

**Signature**

```ts
declare class PropertySignatureTransformation { constructor(
    readonly from: PropertyKey,
    readonly to: PropertyKey,
    readonly decode: (o: Option.Option<any>) => Option.Option<any>,
    readonly encode: (o: Option.Option<any>) => Option.Option<any>
  ) }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaAST.ts#L2023)

Since v3.10.0