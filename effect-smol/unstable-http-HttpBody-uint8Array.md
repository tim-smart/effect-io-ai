Package: `effect`<br />
Module: `HttpBody`<br />

## HttpBody.uint8Array

Creates a byte-array HTTP body.

**Details**

The content type defaults to `application/octet-stream`, and the content length is the byte array length.

**Signature**

```ts
declare const uint8Array: (body: globalThis.Uint8Array, contentType?: string) => Uint8Array
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpBody.ts#L263)

Since v4.0.0