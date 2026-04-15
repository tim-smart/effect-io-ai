Package: `effect`<br />
Module: `HttpApiSchema`<br />

## HttpApiSchema.Empty

Creates a void schema with the given HTTP status code.
This is used to represent empty responses with a specific status code.

**See**

- `asEmpty` for creating a no content response that can be decoded into a meaningful value on the client side.

**Signature**

```ts
declare const Empty: (code: number) => Schema.Void
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiSchema.ts#L183)

Since v4.0.0