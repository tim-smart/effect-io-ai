Package: `effect`<br />
Module: `Socket`<br />

## Socket.toChannelWith

Creates a `Socket` to binary `Channel` adapter with a fixed upstream error
type.

**Signature**

```ts
declare const toChannelWith: <IE = never>() => (self: Socket) => Channel.Channel<NonEmptyReadonlyArray<Uint8Array>, SocketError | IE, void, NonEmptyReadonlyArray<Uint8Array | string | CloseEvent>, IE>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Socket.ts#L518)

Since v4.0.0