Package: `effect`<br />
Module: `RpcMiddleware`<br />

## RpcMiddleware.ServiceClass

The `Context.Service` class shape created for an RPC middleware, including
its error schema, service metadata, and client-side requirement marker.

**Signature**

```ts
export interface ServiceClass<
  Self,
  Name extends string,
  Provides,
  E extends Schema.Top,
  ClientError,
  Requires,
  RequiredForClient extends boolean
> extends Context.Service<Self, RpcMiddleware<Provides, E["Type"], Requires>> {
  new(_: never): Context.ServiceClass.Shape<Name, RpcMiddleware<Provides, E["Type"], Requires>> & {
    readonly [TypeId]: {
      readonly error: E
      readonly provides: Provides
      readonly requires: Requires
      readonly clientError: ClientError
    }
  }
  readonly [TypeId]: typeof TypeId
  readonly error: E
  readonly requiredForClient: RequiredForClient
  readonly "~ClientError": ClientError
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RpcMiddleware.ts#L158)

Since v4.0.0