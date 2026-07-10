Package: `effect`<br />
Module: `RpcMessage`<br />

## RpcMessage.Ping

A client-to-server keepalive message used by protocols that monitor
connection liveness.

**Signature**

```ts
export interface Ping {
  readonly _tag: "Ping"
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RpcMessage.ts#L153)

Since v4.0.0