Package: `effect`<br />
Module: `HttpBody`<br />

## HttpBody.FormData

HTTP body variant backed by Web `FormData`.

**Details**

The content type and content length are left unset so the runtime can supply multipart boundaries.

**Signature**

```ts
declare class FormData { constructor(
    formData: globalThis.FormData
  ) }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpBody.ts#L351)

Since v4.0.0