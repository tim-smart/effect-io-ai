Package: `effect`<br />
Module: `Socket`<br />

## Socket.makeChannel

Creates a binary socket `Channel` from the `Socket` service in the
environment.

**Signature**

```ts
declare const makeChannel: <IE = never>() => Channel.Channel<NonEmptyReadonlyArray<Uint8Array>, SocketError | IE, void, NonEmptyReadonlyArray<Uint8Array | string | CloseEvent>, IE, unknown, Socket>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Socket.ts#L536)

Since v4.0.0