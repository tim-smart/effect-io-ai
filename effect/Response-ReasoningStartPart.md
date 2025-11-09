Package: `@effect/ai`<br />
Module: `Response`<br />

## Response.ReasoningStartPart

Response part indicating the start of streaming reasoning content.

Marks the beginning of a reasoning chunk with a unique identifier.

**Signature**

```ts
export interface ReasoningStartPart extends BasePart<"reasoning-start", ReasoningStartPartMetadata> {
  /**
   * Unique identifier for this reasoning chunk.
   */
  readonly id: string
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Response.ts#L926)

Since v1.0.0