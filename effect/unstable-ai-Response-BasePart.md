Package: `effect`<br />
Module: `Response`<br />

## Response.BasePart

Base interface for all response content parts, including the type identifier
and optional metadata.

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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Response.ts#L453)

Since v4.0.0