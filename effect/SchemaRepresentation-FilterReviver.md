Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.FilterReviver

Reviver for a leaf check.

**Signature**

```ts
export interface FilterReviver<P> {
  readonly id: string
  readonly payloadSchema: Schema.Decoder<P>
  readonly revive: (input: {
    readonly payload: P
    readonly schemas: ReadonlyArray<Schema.Top>
    readonly annotations: Schema.Annotations.Filter | undefined
  }) => SchemaAST.Filter<any>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaRepresentation.ts#L523)

Since v4.0.0