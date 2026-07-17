Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.CodeDocument

The output of `toCodeDocument`: generated TypeScript code for one or
more schemas plus their shared references and auxiliary artifacts.

**Details**

`codes` contains one `Code` per input representation.
`references.nonRecursives` contains topologically sorted non-recursive
definitions. `references.recursives` contains definitions involved in cycles.
`artifacts` contains symbols, enums, and import statements needed by the
code.

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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaRepresentation.ts#L2314)

Since v4.0.0