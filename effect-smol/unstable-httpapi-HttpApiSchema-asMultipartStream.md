Package: `effect`<br />
Module: `HttpApiSchema`<br />

## HttpApiSchema.asMultipartStream

Marks a schema as a multipart stream payload.

**See**

- `asMultipart` for a buffered multipart payload.

**Signature**

```ts
declare const asMultipartStream: (options?: Multipart_.withLimits.Options) => <S extends Schema.Top>(self: S) => asMultipartStream<S>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiSchema.ts#L317)

Since v4.0.0