Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.TemplateLiteral

A template literal type composed of a sequence of parts (literals, strings,
numbers, etc.).

**Signature**

```ts
export interface TemplateLiteral {
  readonly _tag: "TemplateLiteral"
  readonly annotations?: Schema.Annotations.Annotations | undefined
  readonly parts: ReadonlyArray<Representation>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L359)

Since v4.0.0