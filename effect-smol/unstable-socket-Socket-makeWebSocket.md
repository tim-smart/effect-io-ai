Package: `effect`<br />
Module: `Socket`<br />

## Socket.makeWebSocket

Creates a `Socket` backed by a `WebSocketConstructor`, acquiring the
WebSocket for each run and using the close-code classifier to decide which
closes fail the run.

**Signature**

```ts
declare const makeWebSocket: (url: string | Effect.Effect<string>, options?: { readonly closeCodeIsError?: ((code: number) => boolean) | undefined; readonly openTimeout?: Duration.Input | undefined; readonly protocols?: string | Array<string> | undefined; }) => Effect.Effect<Socket, never, WebSocketConstructor>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Socket.ts#L589)

Since v4.0.0