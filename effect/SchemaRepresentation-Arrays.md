Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.Arrays

An array or tuple representation.

**Signature**

```ts
export interface Arrays extends Keyword<"Arrays"> {
  readonly elements: ReadonlyArray<Element>
  readonly rest: ReadonlyArray<Representation>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaRepresentation.ts#L332)

Since v4.0.0