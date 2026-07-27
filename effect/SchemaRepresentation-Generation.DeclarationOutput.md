Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.Generation.DeclarationOutput

Output of declaration code generation.

**Signature**

```ts
export interface DeclarationOutput {
    readonly runtime: string
    readonly Type: string
    readonly importDeclarations?: ReadonlyArray<string> | undefined
  }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaRepresentation.ts#L88)

Since v4.0.0