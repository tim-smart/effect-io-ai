Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.Artifact

Auxiliary source artifact emitted while generating schema code.

**Signature**

```ts
type Artifact = | {
    readonly _tag: "Symbol"
    readonly identifier: string
    readonly code: Code
  }
  | {
    readonly _tag: "Enum"
    readonly identifier: string
    readonly code: Code
  }
  | {
    readonly _tag: "Import"
    readonly importDeclaration: string
  }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaRepresentation.ts#L652)

Since v4.0.0