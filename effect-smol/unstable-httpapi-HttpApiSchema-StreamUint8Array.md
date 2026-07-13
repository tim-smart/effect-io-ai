Package: `effect`<br />
Module: `HttpApiSchema`<br />

## HttpApiSchema.StreamUint8Array

Schema for a streaming `Uint8Array` success response.

**Details**

This declaration stores the response content type for later endpoint,
server, client, and OpenAPI integrations. It is intentionally separate from
the buffered `asUint8Array` response encoding.

**Signature**

```ts
export interface StreamUint8Array extends
  Schema.Bottom<
    Stream.Stream<Uint8Array, unknown, never>,
    Stream.Stream<Uint8Array, unknown, never>,
    never,
    never,
    SchemaAST.Declaration,
    StreamUint8Array
  >
{
  readonly "Rebuild": StreamUint8Array
  readonly [StreamSchemaTypeId]: typeof StreamSchemaTypeId
  readonly _tag: "StreamUint8Array"
  readonly mode: "uint8array"
  readonly contentType: string
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiSchema.ts#L364)

Since v4.0.0