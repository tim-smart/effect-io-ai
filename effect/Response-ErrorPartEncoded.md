Package: `@effect/ai`<br />
Module: `Response`<br />

## Response.ErrorPartEncoded

Encoded representation of error parts for serialization.

**Signature**

```ts
export interface ErrorPartEncoded extends BasePartEncoded<"error", ErrorPartMetadata> {
  readonly error: unknown
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Response.ts#L2284)

Since v1.0.0