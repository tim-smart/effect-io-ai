Package: `effect`<br />
Module: `ParseResult`<br />

## ParseResult.Missing

Error that occurs when a required key or index is missing.

**Signature**

```ts
declare class Missing { constructor(
    /**
     * @since 3.10.0
     */
    readonly ast: AST.Type,
    /**
     * @since 3.10.0
     */
    readonly message?: string
  ) }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/ParseResult.ts#L95)

Since v3.10.0