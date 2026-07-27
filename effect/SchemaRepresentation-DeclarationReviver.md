Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.DeclarationReviver

Reviver for a declaration.

**Signature**

```ts
export interface DeclarationReviver<P> {
  readonly id: string
  readonly payloadSchema: Schema.Decoder<P>
  readonly revive: (input: {
    readonly payload: P
    readonly typeParameters: ReadonlyArray<Schema.Top>
    readonly annotations: Schema.Annotations.Annotations | undefined
  }) => Schema.Top
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaRepresentation.ts#L507)

Since v4.0.0