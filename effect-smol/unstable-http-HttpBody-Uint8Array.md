Package: `effect`<br />
Module: `HttpBody`<br />

## HttpBody.Uint8Array

HTTP body variant backed by a `Uint8Array`.

It stores the bytes, content type, and byte length.

**Signature**

```ts
declare class Uint8Array { constructor(
    body: globalThis.Uint8Array,
    contentType: string,
    contentLength: number
  ) }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpBody.ts#L217)

Since v4.0.0