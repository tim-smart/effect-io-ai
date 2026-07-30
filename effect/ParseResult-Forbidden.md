Package: `effect`<br />
Module: `ParseResult`<br />

## ParseResult.Forbidden

The `Forbidden` variant of the `ParseIssue` type represents a forbidden operation, such as when encountering an Effect that is not allowed to execute (e.g., using `runSync`).

**Signature**

```ts
declare class Forbidden { constructor(
    readonly ast: AST.AST,
    readonly actual: unknown,
    readonly message?: string
  ) }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/ParseResult.ts#L198)

Since v3.10.0