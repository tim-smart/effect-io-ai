Package: `effect`<br />
Module: `Socket`<br />

## Socket.layerWebSocket

Layer that provides a `Socket` service backed by a WebSocket URL or URL
effect.

**Signature**

```ts
declare const layerWebSocket: (url: string | Effect.Effect<string>, options?: { readonly closeCodeIsError?: ((code: number) => boolean) | undefined; readonly openTimeout?: Duration.Input | undefined; readonly protocols?: string | Array<string> | undefined; } | undefined) => Layer.Layer<Socket, never, WebSocketConstructor>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Socket.ts#L782)

Since v4.0.0