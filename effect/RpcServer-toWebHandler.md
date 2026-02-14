Package: `@effect/rpc`<br />
Module: `RpcServer`<br />

## RpcServer.toWebHandler

Construct an http web handler from an `RpcGroup`.

**Signature**

```ts
declare const toWebHandler: <Rpcs extends Rpc.Any, LE>(group: RpcGroup.RpcGroup<Rpcs>, options: { readonly layer: Layer.Layer<Rpc.ToHandler<Rpcs> | Rpc.Middleware<Rpcs> | RpcSerialization.RpcSerialization | HttpRouter.HttpRouter.DefaultServices, LE>; readonly disableTracing?: boolean | undefined; readonly spanPrefix?: string | undefined; readonly spanAttributes?: Record<string, unknown> | undefined; readonly disableFatalDefects?: boolean | undefined; readonly middleware?: (httpApp: HttpApp.Default) => HttpApp.Default<never, HttpRouter.HttpRouter.DefaultServices>; readonly memoMap?: Layer.MemoMap; }) => { readonly handler: (request: globalThis.Request, context?: Context.Context<never> | undefined) => Promise<Response>; readonly dispose: () => Promise<void>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/rpc/src/RpcServer.ts#L1292)

Since v1.0.0