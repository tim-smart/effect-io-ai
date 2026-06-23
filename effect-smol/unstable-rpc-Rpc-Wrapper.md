Package: `effect`<br />
Module: `Rpc`<br />

## Rpc.Wrapper

Wraps a handler result with execution options for the RPC server.

**Details**

`fork` requests concurrent execution, and `uninterruptible` requests
uninterruptible execution.

**Signature**

```ts
export interface Wrapper<A> {
  readonly [WrapperTypeId]: typeof WrapperTypeId
  readonly value: A
  readonly fork: boolean
  readonly uninterruptible: boolean
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Rpc.ts#L1162)

Since v4.0.0