Package: `effect`<br />
Module: `HttpApiSchema`<br />

## HttpApiSchema.StreamSse

Schema for a Server-Sent Events success response.

**Details**

`events` describes successful application events emitted by the stream, and
`error` describes typed stream failures that will be encoded by later
endpoint/server/client integrations using the reserved failure event. If
`error` is omitted, it defaults to `Schema.Never`. When `StreamSse` is
constructed from `data`, handlers and clients expose raw data values while
the server and client still use an SSE event schema internally.

**Gotchas**

The client treats `effect/httpapi/stream/failure` as a stream failure only
when its decoded `data` is a `Cause`. If an event schema accepts that name
dynamically but decodes `data` to another value, the client emits it as an
application event. Endpoint construction rejects event schemas that declare
the reserved name statically.

**Signature**

```ts
export interface StreamSse<
  Events extends Sse.EventCodec,
  Error extends Schema.Constraint,
  Value = Events["Type"]
> extends
  Schema.BottomLazy<
    SchemaAST.Declaration,
    StreamSse<Events, Error, Value>
  >
{
  readonly "Type": Stream.Stream<Value, Error["Type"], never>
  readonly "Encoded": Stream.Stream<Value, Error["Type"], never>
  readonly "DecodingServices": Events["DecodingServices"] | Error["DecodingServices"]
  readonly "EncodingServices": Events["EncodingServices"] | Error["EncodingServices"]
  readonly "Rebuild": StreamSse<Events, Error, Value>
  readonly "~type.make.in": Stream.Stream<Value, Error["Type"], never>
  readonly "~type.make": Stream.Stream<Value, Error["Type"], never>
  readonly "Iso": Stream.Stream<Value, Error["Type"], never>
  readonly [StreamSchemaTypeId]: typeof StreamSchemaTypeId
  readonly _tag: "StreamSse"
  readonly mode: "sse"
  readonly sseMode: StreamSseMode
  readonly contentType: string
  readonly events: Events
  readonly error: Error
  readonly "~Value"?: Value | undefined
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpApiSchema.ts#L301)

Since v4.0.0