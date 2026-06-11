Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.Union

A union of multiple representations.

**Details**

`types` are the union members. `mode` controls JSON Schema output as either
`"anyOf"` (the default) or mutually exclusive `"oneOf"`.

**Signature**

```ts
export interface Union {
  readonly _tag: "Union"
  readonly annotations?: Schema.Annotations.Annotations | undefined
  readonly types: ReadonlyArray<Representation>
  readonly mode: "anyOf" | "oneOf"
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L433)

Since v4.0.0