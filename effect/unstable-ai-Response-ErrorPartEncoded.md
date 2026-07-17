Package: `effect`<br />
Module: `Response`<br />

## Response.ErrorPartEncoded

Encoded representation of error parts for serialization.

**Signature**

```ts
export interface ErrorPartEncoded extends BasePartEncoded<"error", ErrorPartMetadata> {
  readonly error: unknown
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Response.ts#L2546)

Since v4.0.0