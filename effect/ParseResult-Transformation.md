Package: `effect`<br />
Module: `ParseResult`<br />

## ParseResult.Transformation

Error that occurs when a transformation has an error.

**Signature**

```ts
declare class Transformation { constructor(
    readonly ast: AST.Transformation,
    readonly actual: unknown,
    readonly kind: "Encoded" | "Transformation" | "Type",
    readonly issue: ParseIssue
  ) }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/ParseResult.ts#L160)

Since v3.10.0