Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.MultiDocument

Multiple representations sharing definitions.

**Signature**

```ts
export interface MultiDocument {
  readonly representations: readonly [Representation, ...Array<Representation>]
  readonly references: References
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaRepresentation.ts#L485)

Since v4.0.0