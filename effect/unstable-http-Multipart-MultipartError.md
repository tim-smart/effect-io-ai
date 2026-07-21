Package: `effect`<br />
Module: `Multipart`<br />

## Multipart.MultipartError

Error raised while parsing, streaming, or persisting multipart form data.

**Details**

The `reason` field contains the concrete `MultipartErrorReason`. When used as
a server response, parse errors render as `400`, limit errors as `413`, and
internal errors as `500`. Multipart errors are ignored by the error reporter.

**Signature**

```ts
declare class MultipartError
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Multipart.ts#L226)

Since v4.0.0