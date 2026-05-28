Package: `@effect/platform-node`<br />
Module: `NodeHttpIncomingMessage`<br />

## NodeHttpIncomingMessage.NodeHttpIncomingMessage

Adapts a Node `IncomingMessage` to Effect HTTP incoming messages.

**When to use**

Use to implement Node HTTP request or response adapters that expose the
Effect HTTP incoming-message interface.

**Details**

The adapter exposes headers, remote address, stream access, and cached body
decoders. Subclasses provide the error mapping for unknown Node errors.

**Signature**

```ts
declare class NodeHttpIncomingMessage<E> { constructor(
    source: Http.IncomingMessage,
    onError: (error: unknown) => E,
    remoteAddressOverride?: Option.Option<string>
  ) }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-node/src/NodeHttpIncomingMessage.ts#L56)

Since v4.0.0