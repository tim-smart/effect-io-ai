Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.Generation.CheckOutput

Output of check code generation.

**Signature**

```ts
export interface CheckOutput {
    readonly runtime: string
    readonly importDeclarations?: ReadonlyArray<string> | undefined
  }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaRepresentation.ts#L118)

Since v4.0.0