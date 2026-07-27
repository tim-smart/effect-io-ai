Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.Union

A union representation.

**Signature**

```ts
export interface Union extends Keyword<"Union"> {
  readonly types: ReadonlyArray<Representation>
  readonly mode: "anyOf" | "oneOf"
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaRepresentation.ts#L389)

Since v4.0.0