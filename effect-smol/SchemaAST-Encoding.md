Package: `effect`<br />
Module: `SchemaAST`<br />

## SchemaAST.Encoding

A non-empty chain of `Link` values representing the transformation
steps between a schema's decoded (type) form and its encoded (wire) form.

Stored on `Base.encoding`. When `undefined`, the node has no
encoding transformation (type and encoded forms are identical).

**See**

- `Link`
- `toEncoded`

**Signature**

```ts
type Encoding = readonly [Link, ...Array<Link>]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaAST.ts#L371)

Since v4.0.0