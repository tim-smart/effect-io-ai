Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.CodeDocument

Generated schema code together with named references and auxiliary artifacts.

**Signature**

```ts
export interface CodeDocument {
  readonly codes: ReadonlyArray<Code>
  readonly references: {
    readonly nonRecursives: ReadonlyArray<{
      readonly $ref: string
      readonly code: Code
    }>
    readonly recursives: Readonly<Record<string, Code>>
  }
  readonly artifacts: ReadonlyArray<Artifact>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaRepresentation.ts#L674)

Since v4.0.0