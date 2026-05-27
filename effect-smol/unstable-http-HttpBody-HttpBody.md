Package: `effect`<br />
Module: `HttpBody`<br />

## HttpBody.HttpBody

Represents an HTTP request body.

**Details**

Supported variants include empty bodies, raw bodies, byte arrays, `FormData`, and streams of bytes.

**Signature**

```ts
type HttpBody = Empty | Raw | Uint8Array | FormData | Stream
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpBody.ts#L92)

Since v4.0.0