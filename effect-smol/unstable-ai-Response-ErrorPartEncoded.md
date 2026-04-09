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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Response.ts#L2504)

Since v1.0.0