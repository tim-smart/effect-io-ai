Package: `effect`<br />
Module: `HttpBody`<br />

## HttpBody.text

Creates a UTF-8 encoded text HTTP body.

**Details**

The content type defaults to `text/plain`.

**Signature**

```ts
declare const text: (body: string, contentType?: string) => Uint8Array
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpBody.ts#L278)

Since v4.0.0