Package: `effect`<br />
Module: `Response`<br />

## Response.ReasoningStartPart

Response part indicating the start of streaming reasoning content with a
unique reasoning chunk identifier.

**Signature**

```ts
export interface ReasoningStartPart extends BasePart<"reasoning-start", ReasoningStartPartMetadata> {
  /**
   * Unique identifier for this reasoning chunk.
   */
  readonly id: string
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Response.ts#L887)

Since v4.0.0