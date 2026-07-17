Package: `effect`<br />
Module: `Socket`<br />

## Socket.makeWebSocketChannel

Creates a binary `Channel` backed by a WebSocket URL, requiring a
`WebSocketConstructor` service.

**Signature**

```ts
declare const makeWebSocketChannel: <IE = never>(url: string, options?: { readonly closeCodeIsError?: (code: number) => boolean; }) => Channel.Channel<NonEmptyReadonlyArray<Uint8Array>, SocketError | IE, void, NonEmptyReadonlyArray<Uint8Array | string | CloseEvent>, IE, unknown, WebSocketConstructor>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Socket.ts#L749)

Since v4.0.0