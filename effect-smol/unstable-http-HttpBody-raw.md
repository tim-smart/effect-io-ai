Package: `effect`<br />
Module: `HttpBody`<br />

## HttpBody.raw

Creates a raw HTTP body from an arbitrary value and optional `contentType` and `contentLength` metadata.

**Signature**

```ts
declare const raw: (body: unknown, options?: { readonly contentType?: string | undefined; readonly contentLength?: number | undefined; } | undefined) => Raw
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpBody.ts#L247)

Since v4.0.0