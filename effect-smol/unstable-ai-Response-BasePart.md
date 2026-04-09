Package: `effect`<br />
Module: `Response`<br />

## Response.BasePart

Base interface for all response content parts.

Provides common structure including type identifier and optional metadata.

**Signature**

```ts
export interface BasePart<Type extends string, Metadata extends ProviderMetadata> {
  readonly [PartTypeId]: typeof PartTypeId
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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Response.ts#L473)

Since v1.0.0