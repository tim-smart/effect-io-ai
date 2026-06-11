Package: `effect`<br />
Module: `RpcSchema`<br />

## RpcSchema.Stream

A schema marker for RPC streaming responses, storing the success element
schema and stream error schema used for encoding and decoding stream chunks.

**Signature**

```ts
export interface Stream<A extends Schema.Top, E extends Schema.Top> extends
  Schema.Bottom<
    Stream_.Stream<A["Type"], E["Type"]>,
    Stream_.Stream<A["Encoded"], E["Encoded"]>,
    A["DecodingServices"] | E["DecodingServices"],
    A["EncodingServices"] | E["EncodingServices"],
    SchemaAST.Declaration,
    Stream<A, E>
  >
{
  readonly "Rebuild": Stream<A, E>
  readonly [StreamSchemaTypeId]: typeof StreamSchemaTypeId
  readonly success: A
  readonly error: E
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RpcSchema.ts#L53)

Since v4.0.0