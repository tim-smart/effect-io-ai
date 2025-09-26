Package: `@effect/ai`<br />
Module: `Response`<br />

## Response.UrlSourcePartEncoded

Encoded representation of URL source parts for serialization.

**Signature**

```ts
export interface UrlSourcePartEncoded extends BasePartEncoded<"source", UrlSourcePartMetadata> {
  /**
   * Type discriminator for URL sources.
   */
  readonly sourceType: "url"
  /**
   * Unique identifier for the URL.
   */
  readonly id: string
  /**
   * The URL that was referenced as a string.
   */
  readonly url: string
  /**
   * Display title of the URL content.
   */
  readonly title: string
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Response.ts#L1783)

Since v1.0.0