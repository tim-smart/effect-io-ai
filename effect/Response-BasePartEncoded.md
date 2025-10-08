Package: `@effect/ai`<br />
Module: `Response`<br />

## Response.BasePartEncoded

Base interface for encoded response content parts.

**Signature**

```ts
export interface BasePartEncoded<Type extends string, Metadata extends ProviderMetadata> {
  /**
   * The type of this response part.
   */
  readonly type: Type
  /**
   * Optional provider-specific metadata for this part.
   */
  readonly metadata?: Metadata | undefined
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Response.ts#L495)

Since v1.0.0