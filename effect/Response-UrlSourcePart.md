Package: `@effect/ai`<br />
Module: `Response`<br />

## Response.UrlSourcePart

Response part representing a URL source reference.

Used to reference web URLs that were used in generating the response.

**Signature**

```ts
export interface UrlSourcePart extends BasePart<"source", UrlSourcePartMetadata> {
  /**
   * Type discriminator for URL sources.
   */
  readonly sourceType: "url"
  /**
   * Unique identifier for the URL.
   */
  readonly id: string
  /**
   * The URL that was referenced.
   */
  readonly url: URL
  /**
   * Display title of the URL content.
   */
  readonly title: string
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Response.ts#L1961)

Since v1.0.0