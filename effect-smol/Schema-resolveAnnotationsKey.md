Package: `effect`<br />
Module: `Schema`<br />

## Schema.resolveAnnotationsKey

Resolves the context (key-level) annotations from a schema. Context
annotations are those attached via `annotateKey` and live on the AST's
`context` rather than on the schema node itself.

**Signature**

```ts
declare const resolveAnnotationsKey: <S extends Top>(schema: S) => Annotations.Key<S["Type"]> | undefined
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L11759)

Since v4.0.0