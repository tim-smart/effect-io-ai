Package: `effect`<br />
Module: `Rpc`<br />

## Rpc.unwrap

Returns the wrapped response value when the input is an RPC `Wrapper`, or the
input itself when it is already unwrapped.

**Signature**

```ts
declare const unwrap: <A extends object>(value: WrapperOr<A>) => A
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Rpc.ts#L1251)

Since v4.0.0