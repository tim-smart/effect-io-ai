Package: `effect`<br />
Module: `RpcSchema`<br />

## RpcSchema.Stream

A schema marker for RPC streaming responses, storing the success element
schema and stream error schema used for encoding and decoding stream chunks.

**Signature**

```ts
export interface Stream<A extends Schema.Constraint, E extends Schema.Constraint> extends
  Schema.BottomLazy<
    SchemaAST.Declaration,
    Stream<A, E>
  >
{
  readonly "Type": Stream_.Stream<A["Type"], E["Type"]>
  readonly "Encoded": Stream_.Stream<A["Encoded"], E["Encoded"]>
  readonly "DecodingServices": A["DecodingServices"] | E["DecodingServices"]
  readonly "EncodingServices": A["EncodingServices"] | E["EncodingServices"]
  readonly "Rebuild": Stream<A, E>
  readonly "~type.make.in": Stream_.Stream<A["Type"], E["Type"]>
  readonly "~type.make": Stream_.Stream<A["Type"], E["Type"]>
  readonly "Iso": Stream_.Stream<A["Type"], E["Type"]>
  readonly [StreamSchemaTypeId]: typeof StreamSchemaTypeId
  readonly success: A
  readonly error: E
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/RpcSchema.ts#L53)

Since v4.0.0