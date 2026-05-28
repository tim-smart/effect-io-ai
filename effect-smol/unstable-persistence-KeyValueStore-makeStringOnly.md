Package: `effect`<br />
Module: `KeyValueStore`<br />

## KeyValueStore.makeStringOnly

Adapts a string-only backing store into a `KeyValueStore`.

**Details**

`Uint8Array` values are stored as base64 strings. `getUint8Array` decodes
base64 values and falls back to UTF-8 encoding for non-base64 strings.

**Signature**

```ts
declare const makeStringOnly: (options: MakeStringOptions) => KeyValueStore
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/KeyValueStore.ts#L280)

Since v4.0.0