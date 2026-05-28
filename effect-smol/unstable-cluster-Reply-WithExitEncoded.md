Package: `effect`<br />
Module: `Reply`<br />

## Reply.WithExitEncoded

Wire-format representation of a terminal reply containing the request id, reply
id, and encoded RPC exit value.

**Signature**

```ts
export interface WithExitEncoded<A = unknown, E = unknown> {
  readonly _tag: "WithExit"
  readonly requestId: string
  readonly id: string
  readonly exit: RpcMessage.ExitEncoded<A, E>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Reply.ts#L154)

Since v4.0.0