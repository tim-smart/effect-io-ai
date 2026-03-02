Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.Union

A union of multiple representations.

- `types` are the union members.
- `mode` controls JSON Schema output: `"anyOf"` (default) or `"oneOf"`
  (mutually exclusive).

**Signature**

```ts
export interface Union {
  readonly _tag: "Union"
  readonly annotations?: Schema.Annotations.Annotations | undefined
  readonly types: ReadonlyArray<Representation>
  readonly mode: "anyOf" | "oneOf"
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L473)

Since v4.0.0