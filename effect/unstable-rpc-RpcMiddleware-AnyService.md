Package: `effect`<br />
Module: `RpcMiddleware`<br />

## RpcMiddleware.AnyService

An erased RPC middleware context key carrying middleware metadata.

**Signature**

```ts
export interface AnyService extends Context.Key<any, any> {
  readonly [TypeId]: typeof TypeId
  readonly error: Schema.Top
  readonly requiredForClient: boolean
  readonly "~ClientError": any
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/RpcMiddleware.ts#L229)

Since v4.0.0