Package: `effect`<br />
Module: `SchemaAST`<br />

## SchemaAST.TemplateLiteral

AST node representing a TypeScript template literal type
(e.g. `` `user_${string}` ``).

`parts` is an array of AST nodes; each part contributes to the
template literal pattern. A regex is derived from the parts to validate
strings at runtime.

**See**

- `isTemplateLiteral`

**Signature**

```ts
declare class TemplateLiteral { constructor(
    parts: ReadonlyArray<AST>,
    annotations?: Schema.Annotations.Annotations,
    checks?: Checks,
    encoding?: Encoding,
    context?: Context
  ) }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaAST.ts#L929)

Since v4.0.0