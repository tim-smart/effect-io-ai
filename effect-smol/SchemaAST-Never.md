Package: `effect`<br />
Module: `SchemaAST`<br />

## SchemaAST.Never

AST node representing the `never` type — no value matches.

Parsing always fails. Useful as a placeholder in unions or as the result
of narrowing that eliminates all options.

**See**

- `never`
- `isNever`

**Signature**

```ts
declare class Never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaAST.ts#L737)

Since v4.0.0