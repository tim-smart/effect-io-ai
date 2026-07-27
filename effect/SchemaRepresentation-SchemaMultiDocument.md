Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.SchemaMultiDocument

Live schemas reconstructed from a multi-document.

**Signature**

```ts
export interface SchemaMultiDocument {
  readonly schemas: readonly [Schema.Top, ...Array<Schema.Top>]
  readonly definitions: Readonly<Record<string, Schema.Top>>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaRepresentation.ts#L496)

Since v4.0.0