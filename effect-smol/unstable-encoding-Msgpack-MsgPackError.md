Package: `effect`<br />
Module: `Msgpack`<br />

## Msgpack.MsgPackError

Error raised when MessagePack encoding or decoding fails.

The `kind` field identifies whether the failure happened while packing or
unpacking, and `cause` preserves the original error.

**Signature**

```ts
declare class MsgPackError
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Msgpack.ts#L46)

Since v4.0.0