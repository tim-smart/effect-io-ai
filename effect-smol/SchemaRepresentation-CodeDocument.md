Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.CodeDocument

The output of `toCodeDocument`: generated TypeScript code for one or
more schemas plus their shared references and auxiliary artifacts.

- `codes` — one `Code` per input representation.
- `references.nonRecursives` — topologically sorted non-recursive definitions.
- `references.recursives` — definitions involved in cycles.
- `artifacts` — symbols, enums, and import statements needed by the code.

**See**

- `toCodeDocument`
- `Code`
- `Artifact`

**Signature**

```ts
type CodeDocument = {
  readonly codes: ReadonlyArray<Code>
  readonly references: {
    readonly nonRecursives: ReadonlyArray<{
      readonly $ref: string
      readonly code: Code
    }>
    readonly recursives: {
      readonly [$ref: string]: Code
    }
  }
  readonly artifacts: ReadonlyArray<Artifact>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L2234)

Since v4.0.0