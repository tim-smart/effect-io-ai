## GenAI.RequestAttributes

Telemetry attributes which are part of the GenAI specification and are
namespaced by `gen_ai.request`.

**Signature**

```ts
export interface RequestAttributes {
    /**
     * The name of the GenAI model a request is being made to.
     */
    readonly model?: string | null | undefined
    /**
     * The temperature setting for the GenAI request.
     */
    readonly temperature?: number | null | undefined
    /**
     * The temperature setting for the GenAI request.
     */
    readonly topK?: number | null | undefined
    /**
     * The top_k sampling setting for the GenAI request.
     */
    readonly topP?: number | null | undefined
    /**
     * The top_p sampling setting for the GenAI request.
     */
    readonly maxTokens?: number | null | undefined
    /**
     * The encoding formats requested in an embeddings operation, if specified.
     */
    readonly encodingFormats?: ReadonlyArray<string> | null | undefined
    /**
     * List of sequences that the model will use to stop generating further
     * tokens.
     */
    readonly stopSequences?: ReadonlyArray<string> | null | undefined
    /**
     * The frequency penalty setting for the GenAI request.
     */
    readonly frequencyPenalty?: number | null | undefined
    /**
     * The presence penalty setting for the GenAI request.
     */
    readonly presencePenalty?: number | null | undefined
    /**
     * The seed setting for the GenAI request. Requests with same seed value
     * are more likely to return same result.
     */
    readonly seed?: number | null | undefined
  }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/AiTelemetry.ts#L104)

Since v1.0.0