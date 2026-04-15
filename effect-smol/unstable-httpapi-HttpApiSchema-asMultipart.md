Package: `effect`<br />
Module: `HttpApiSchema`<br />

## HttpApiSchema.asMultipart

Marks a schema as a multipart payload.

**See**

- `asMultipartStream` for a multipart stream payload.

**Signature**

```ts
declare const asMultipart: (options?: Multipart_.withLimits.Options) => <S extends Schema.Top>(self: S) => asMultipart<S>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiSchema.ts#L282)

Since v4.0.0