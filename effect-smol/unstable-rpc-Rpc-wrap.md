Package: `effect`<br />
Module: `Rpc`<br />

## Rpc.wrap

Wraps a handler result with RPC server execution options.

**Details**

When the value is already wrapped, unspecified options are inherited from the
existing wrapper.

**Signature**

```ts
declare const wrap: (options: { readonly fork?: boolean | undefined; readonly uninterruptible?: boolean | undefined; }) => <A extends object>(value: A) => Wrapper<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Rpc.ts#L1225)

Since v4.0.0