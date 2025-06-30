Package: `@effect/ai-amazon-bedrock`<br />
Module: `EventStreamEncoding`<br />

## EventStreamEncoding.makeChannel

An event stream encoding parser.

See the [AWS Documentation](https://docs.aws.amazon.com/lexv2/latest/dg/event-stream-encoding.html)
for more information.

**Signature**

```ts
declare const makeChannel: <A, I, IE, Done>(schema: Schema.Schema<A, I>, options?: { readonly bufferSize?: number; }) => Channel.Channel<Chunk.Chunk<A>, Chunk.Chunk<Uint8Array<ArrayBufferLike>>, IE | ParseError, IE, void, Done, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/amazon-bedrock/src/EventStreamEncoding.ts#L22)

Since v1.0.0