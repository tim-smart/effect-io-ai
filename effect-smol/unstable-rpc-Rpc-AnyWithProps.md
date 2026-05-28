Package: `effect`<br />
Module: `Rpc`<br />

## Rpc.AnyWithProps

An erased RPC definition with all schema, middleware, annotation, and service
metadata available.

**Signature**

```ts
export interface AnyWithProps extends Pipeable {
  readonly [TypeId]: typeof TypeId
  readonly _tag: string
  readonly key: string
  readonly payloadSchema: Schema.Top
  readonly successSchema: Schema.Top
  readonly errorSchema: Schema.Top
  readonly defectSchema: Schema.Top
  readonly annotations: Context.Context<never>
  readonly middlewares: ReadonlySet<RpcMiddleware.AnyServiceWithProps>
  readonly "~requires": any
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Rpc.ts#L280)

Since v4.0.0