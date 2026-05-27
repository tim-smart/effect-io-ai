Package: `effect`<br />
Module: `RpcMiddleware`<br />

## RpcMiddleware.AnyId

A type-level carrier for RPC middleware metadata, including provided
services, required services, error schema, and client error type.

**Signature**

```ts
export interface AnyId {
  readonly [TypeId]: {
    readonly provides: any
    readonly requires: any
    readonly error: Schema.Top
    readonly clientError: any
  }
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RpcMiddleware.ts#L152)

Since v4.0.0