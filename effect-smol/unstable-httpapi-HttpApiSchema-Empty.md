Package: `effect`<br />
Module: `HttpApiSchema`<br />

## HttpApiSchema.Empty

Creates a void schema with the given HTTP status code.
This is used to represent empty responses with a specific status code.

**See**

- `NoContent` for the predefined 204 no content schema.

**Signature**

```ts
declare const Empty: (code: number) => Schema.Void
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiSchema.ts#L173)

Since v4.0.0