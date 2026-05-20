Package: `effect`<br />
Module: `SchemaAST`<br />

## SchemaAST.Declaration

AST node for user-defined opaque types with custom parsing logic.

**When to use**

Use when none of the built-in AST nodes fit. The `run` function receives
`typeParameters` and returns a parser that validates/transforms raw input.

**Details**

- `typeParameters` — inner schemas this declaration is parameterized over
  (e.g. the element type for a custom collection).
- `run` — factory producing the actual parse function.

**See**

- `isDeclaration`

**Signature**

```ts
declare class Declaration { constructor(
    typeParameters: ReadonlyArray<AST>,
    run: (
      typeParameters: ReadonlyArray<AST>
    ) => (input: unknown, self: Declaration, options: ParseOptions) => Effect.Effect<any, Issue.Issue, any>,
    annotations?: Schema.Annotations.Annotations,
    checks?: Checks,
    encoding?: Encoding,
    context?: Context
  ) }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaAST.ts#L591)

Since v3.10.0