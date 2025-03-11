## Composite

Error that contains multiple issues.

**Signature**

```ts
declare class Composite { constructor(
    readonly ast: AST.AST,
    readonly actual: unknown,
    readonly issues: SingleOrNonEmpty<ParseIssue>,
    readonly output?: unknown
  ) }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/ParseResult.ts#L122)

Since v3.10.0