Package: `effect`<br />
Module: `Schema`<br />

## Schema.Uint8Array

Schema interface for `Uint8Array`, representing JavaScript `Uint8Array`
instances with base64 JSON encoding.

**Signature**

```ts
export interface Uint8Array extends instanceOf<globalThis.Uint8Array<ArrayBufferLike>> {
  readonly "Rebuild": Uint8Array
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L11256)

Since v4.0.0