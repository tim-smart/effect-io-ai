Package: `effect`<br />
Module: `SchemaAST`<br />

## SchemaAST.Base

Abstract base class for all `AST` node variants.

Every AST node extends `Base` and inherits these fields:

- `annotations` — user-supplied metadata (identifier, title, description,
  arbitrary keys).
- `checks` — optional `Checks` for post-type-match validation.
- `encoding` — optional `Encoding` chain for type ↔ wire
  transformations.
- `context` — optional `Context` for per-property metadata.

Subclasses add a `_tag` discriminant and variant-specific data.

**See**

- `AST`

**Signature**

```ts
declare class Base { constructor(
    annotations: Schema.Annotations.Annotations | undefined = undefined,
    checks: Checks | undefined = undefined,
    encoding: Encoding | undefined = undefined,
    context: Context | undefined = undefined
  ) }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaAST.ts#L526)

Since v4.0.0