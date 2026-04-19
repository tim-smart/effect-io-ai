Package: `effect`<br />
Module: `SchemaAST`<br />

## SchemaAST.Unknown

AST node representing the `unknown` type — every value matches.

Unlike `Any`, this is type-safe: the parsed result is typed as
`unknown` rather than `any`.

**See**

- `unknown`
- `isUnknown`

**Signature**

```ts
declare class Unknown
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaAST.ts#L803)

Since v4.0.0