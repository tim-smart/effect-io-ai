Package: `effect`<br />
Module: `HttpIncomingMessage`<br />

## HttpIncomingMessage.HttpIncomingMessage

Common model for incoming HTTP messages, with headers, remote address, and effectful body accessors.

**Signature**

```ts
export interface HttpIncomingMessage<E = unknown> extends Inspectable.Inspectable {
  readonly [TypeId]: typeof TypeId
  readonly headers: Headers.Headers
  readonly remoteAddress: Option.Option<string>
  readonly json: Effect.Effect<Schema.Json, E>
  readonly text: Effect.Effect<string, E>
  readonly urlParamsBody: Effect.Effect<UrlParams.UrlParams, E>
  readonly arrayBuffer: Effect.Effect<ArrayBuffer, E>
  readonly stream: Stream.Stream<Uint8Array, E>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpIncomingMessage.ts#L47)

Since v4.0.0