Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.makeDeclarationReviver

Creates a declaration reviver while inferring its payload type from `payloadSchema`.

**Signature**

```ts
declare const makeDeclarationReviver: <P>(id: string, payloadSchema: Schema.Decoder<P>, revive: DeclarationReviver<P>["revive"]) => DeclarationReviver<P>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaRepresentation.ts#L579)

Since v4.0.0