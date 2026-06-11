Package: `effect`<br />
Module: `Msgpack`<br />

## Msgpack.schema

Schema type for values encoded as MessagePack bytes.

**Details**

It decodes a `Uint8Array` MessagePack payload to the target schema type and
encodes the target type back to bytes.

**Signature**

```ts
export interface schema<S extends Schema.Top> extends Schema.decodeTo<S, Schema.instanceOf<Uint8Array<ArrayBuffer>>> {}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Msgpack.ts#L328)

Since v4.0.0