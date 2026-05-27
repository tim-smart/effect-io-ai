Package: `effect`<br />
Module: `RpcGroup`<br />

## RpcGroup.HandlersServices

Computes the services required by all handlers in a handler object for an RPC
union.

**Signature**

```ts
type HandlersServices<Rpcs, Handlers> = keyof Handlers extends infer K ?
  K extends keyof Handlers & string ? HandlerServices<Rpcs, K, Handlers[K]> : never :
  never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RpcGroup.ts#L233)

Since v4.0.0