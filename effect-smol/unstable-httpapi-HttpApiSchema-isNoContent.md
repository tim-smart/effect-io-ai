Package: `effect`<br />
Module: `HttpApiSchema`<br />

## HttpApiSchema.isNoContent

Returns `true` when a schema AST represents a no-content response.

**Details**

The check succeeds for direct `void` schemas and schemas whose encoded or
transformation target is `void`.

**Signature**

```ts
declare const isNoContent: (ast: SchemaAST.AST) => boolean
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiSchema.ts#L443)

Since v4.0.0