Package: `effect`<br />
Module: `SchemaAST`<br />

## SchemaAST.Declaration

AST node for user-defined opaque types with custom parsing logic.

**When to use**

Use when you need a custom schema AST node because none of the built-in
nodes fit.

**Details**

- `typeParameters` — inner schemas this declaration is parameterized over
  (e.g. the element type for a custom collection).
- `run` — factory that receives `typeParameters` and returns a parser that
  validates or transforms raw input.

**See**

- `isDeclaration`

**Signature**

```ts
declare class Declaration { constructor(
    typeParameters: ReadonlyArray<AST>,
    run: (
      typeParameters: ReadonlyArray<AST>
    ) => (input: unknown, self: Declaration, options: ParseOptions) => Effect.Effect<any, SchemaIssue.Issue, any>,
    annotations?: Schema.Annotations.Annotations,
    checks?: Checks,
    encoding?: Encoding,
    context?: Context,
    encodingChecks?: Checks
  ) }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaAST.ts#L649)

Since v3.10.0