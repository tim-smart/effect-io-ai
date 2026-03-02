Package: `effect`<br />
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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Response.ts#L912)

Since v1.0.0