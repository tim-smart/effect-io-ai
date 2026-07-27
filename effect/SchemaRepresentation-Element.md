Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.Element

A tuple element.

**Signature**

```ts
export interface Element {
  readonly isOptional: boolean
  readonly type: Representation
  readonly annotations?: Schema.Annotations.Annotations | undefined
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaRepresentation.ts#L320)

Since v4.0.0