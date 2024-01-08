# make

Creates an RPC client with the specified resolver

To import and use `make` from the "Client" module:

```ts
import * as Client from "@effect/rpc/Client"
// Can be accessed like this
Client.make
```

**Signature**

```ts
export declare const make: <
  const S extends RpcService.DefinitionWithId,
  Resolver extends RpcResolver<never> | Effect<any, never, RpcResolver<never>>
>(
  schemas: S,
  resolver: Resolver,
  ...initAndOptions: [S] extends [RpcService.DefinitionWithSetup]
    ? [init: RpcSchema.Input<S["__setup"]>, options?: RpcClientOptions | undefined]
    : [options?: RpcClientOptions | undefined]
) => [S] extends [RpcService.DefinitionWithSetup]
  ? Effect<
      never,
      RpcError | RpcSchema.Error<S["__setup"]>,
      RpcClient<S, [Resolver] extends [Effect<any, any, any>] ? Effect.Context<Resolver> : never>
    >
  : RpcClient<S, [Resolver] extends [Effect<any, any, any>] ? Effect.Context<Resolver> : never>
```
