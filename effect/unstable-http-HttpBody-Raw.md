Package: `effect`<br />
Module: `HttpBody`<br />

## HttpBody.Raw

HTTP body variant containing an arbitrary runtime body value with optional content metadata.

**Signature**

```ts
declare class Raw { constructor(
    body: unknown,
    contentType: string | undefined,
    contentLength: number | undefined
  ) }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpBody.ts#L174)

Since v4.0.0