Package: `@effect/ai`<br />
Module: `Response`<br />

## Response.ToolParamsEndPartEncoded

Encoded representation of tool params end parts for serialization.

**Signature**

```ts
export interface ToolParamsEndPartEncoded extends BasePartEncoded<"tool-params-end", ToolParamsEndPartMetadata> {
  /**
   * Unique identifier matching the corresponding tool parameter stream.
   */
  readonly id: string
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Response.ts#L1214)

Since v1.0.0