Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.makeFilterReviver

Creates a filter reviver while inferring its payload type from `payloadSchema`.

**Signature**

```ts
declare const makeFilterReviver: <P>(id: string, payloadSchema: Schema.Decoder<P>, revive: FilterReviver<P>["revive"]) => FilterReviver<P>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaRepresentation.ts#L591)

Since v4.0.0