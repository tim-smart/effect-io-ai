Package: `@effect/ai`<br />
Module: `Response`<br />

## Response.BasePart

Base interface for all response content parts.

Provides common structure including type identifier and optional metadata.

**Signature**

```ts
export interface BasePart<Type extends string, Metadata extends ProviderMetadata> {
  readonly [PartTypeId]: PartTypeId
  /**
   * The type of this response part.
   */
  readonly type: Type
  /**
   * Optional provider-specific metadata for this part.
   */
  readonly metadata: Metadata
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Response.ts#L476)

Since v1.0.0