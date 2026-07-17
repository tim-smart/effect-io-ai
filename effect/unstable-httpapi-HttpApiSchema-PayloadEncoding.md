Package: `effect`<br />
Module: `HttpApiSchema`<br />

## HttpApiSchema.PayloadEncoding

HTTP API request payload encoding metadata.

**Signature**

```ts
type PayloadEncoding = | {
    readonly _tag: "Multipart"
    readonly mode: "buffered" | "stream"
    readonly contentType: string
    readonly limits?: Multipart_.withLimits.Options | undefined
  }
  | {
    readonly _tag: "Json" | "FormUrlEncoded" | "Uint8Array" | "Text"
    readonly contentType: string
  }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpApiSchema.ts#L50)

Since v4.0.0