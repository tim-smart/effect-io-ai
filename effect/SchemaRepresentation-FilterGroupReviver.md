Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.FilterGroupReviver

Reviver for a check group.

**Signature**

```ts
export interface FilterGroupReviver<P> {
  readonly id: string
  readonly payloadSchema: Schema.Decoder<P>
  readonly revive: (input: {
    readonly payload: P
    readonly schemas: ReadonlyArray<Schema.Top>
    readonly annotations: Schema.Annotations.Filter | undefined
  }) => SchemaAST.FilterGroup<any>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaRepresentation.ts#L539)

Since v4.0.0