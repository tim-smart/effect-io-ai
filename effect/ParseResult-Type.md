## Type

The `Type` variant of the `ParseIssue` type represents an error that occurs when the `actual` value is not of the expected type.
The `ast` field specifies the expected type, and the `actual` field contains the value that caused the error.

**Signature**

```ts
declare class Type { constructor(
    readonly ast: AST.AST,
    readonly actual: unknown,
    readonly message?: string
  ) }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/ParseResult.ts#L180)

Since v3.10.0