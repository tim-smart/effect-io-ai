Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.makeFilterGroupReviver

Creates a filter group reviver while inferring its payload type from `payloadSchema`.

**Signature**

```ts
declare const makeFilterGroupReviver: <P>(id: string, payloadSchema: Schema.Decoder<P>, revive: FilterGroupReviver<P>["revive"]) => FilterGroupReviver<P>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaRepresentation.ts#L603)

Since v4.0.0