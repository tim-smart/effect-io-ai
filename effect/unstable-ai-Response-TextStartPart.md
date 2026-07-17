Package: `effect`<br />
Module: `Response`<br />

## Response.TextStartPart

Response part indicating the start of streaming text content with a unique
text chunk identifier.

**Signature**

```ts
export interface TextStartPart extends BasePart<"text-start", TextStartPartMetadata> {
  /**
   * Unique identifier for this text chunk.
   */
  readonly id: string
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Response.ts#L630)

Since v4.0.0