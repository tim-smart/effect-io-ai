## Refinement

Error that occurs when a refinement has an error.

**Signature**

```ts
declare class Refinement { constructor(
    readonly ast: AST.Refinement,
    readonly actual: unknown,
    readonly kind: "From" | "Predicate",
    readonly issue: ParseIssue
  ) }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/ParseResult.ts#L141)

Since v3.10.0