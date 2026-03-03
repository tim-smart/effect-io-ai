Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.Artifact

An auxiliary code artifact produced during code generation — a symbol
declaration, an enum declaration, or an import statement.

**See**

- `CodeDocument`
- `toCodeDocument`

**Signature**

```ts
type Artifact = | {
    readonly _tag: "Symbol"
    readonly identifier: string
    readonly generation: Code
  }
  | {
    readonly _tag: "Enum"
    readonly identifier: string
    readonly generation: Code
  }
  | {
    readonly _tag: "Import"
    readonly importDeclaration: string
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L2202)

Since v4.0.0