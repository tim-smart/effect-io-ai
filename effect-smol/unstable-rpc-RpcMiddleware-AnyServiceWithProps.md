Package: `effect`<br />
Module: `RpcMiddleware`<br />

## RpcMiddleware.AnyServiceWithProps

An erased RPC middleware context key whose service value is a server-side
middleware function.

**Signature**

```ts
export interface AnyServiceWithProps extends Context.Key<any, RpcMiddleware<any, any, any>> {
  readonly [TypeId]: typeof TypeId
  readonly error: Schema.Top
  readonly requiredForClient: boolean
  readonly "~ClientError": any
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RpcMiddleware.ts#L242)

Since v4.0.0