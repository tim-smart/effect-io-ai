Package: `effect`<br />
Module: `Schema`<br />

## Schema.Uint8ArrayFromBase64

Schema interface for `Uint8ArrayFromBase64`, a transformation between
base64-encoded strings and `Uint8Array` values.

**Signature**

```ts
export interface Uint8ArrayFromBase64 extends decodeTo<Uint8Array, String> {
  readonly "Rebuild": Uint8ArrayFromBase64
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L10276)

Since v4.0.0