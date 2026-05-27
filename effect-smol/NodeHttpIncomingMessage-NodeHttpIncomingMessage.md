Package: `@effect/platform-node`<br />
Module: `NodeHttpIncomingMessage`<br />

## NodeHttpIncomingMessage.NodeHttpIncomingMessage

Base adapter from Node `IncomingMessage` to Effect HTTP incoming messages,
exposing headers, remote address, stream access, and cached text, JSON, URL
parameter, and array-buffer body decoders with caller-provided error mapping.

**Signature**

```ts
declare class NodeHttpIncomingMessage<E> { constructor(
    source: Http.IncomingMessage,
    onError: (error: unknown) => E,
    remoteAddressOverride?: Option.Option<string>
  ) }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-node/src/NodeHttpIncomingMessage.ts#L48)

Since v4.0.0