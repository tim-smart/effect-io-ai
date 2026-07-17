Package: `@effect/ai-openai-compat`<br />
Module: `OpenAiClient`<br />

## OpenAiClient.ResponseStreamEvent

Server-sent event shapes emitted by Responses-style response streams.

**Signature**

```ts
type ResponseStreamEvent = | ResponseCreatedEvent
  | ResponseCompletedEvent
  | ResponseIncompleteEvent
  | ResponseFailedEvent
  | ResponseOutputItemAddedEvent
  | ResponseOutputItemDoneEvent
  | ResponseTextDeltaEvent
  | ResponseOutputTextAnnotationAddedEvent
  | ResponseFunctionCallArgumentsDeltaEvent
  | ResponseReasoningSummaryPartAddedEvent
  | ResponseReasoningSummaryPartDoneEvent
  | ResponseReasoningSummaryTextDeltaEvent
  | ResponseErrorEvent
  | UnknownResponseStreamEvent
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openai-compat/src/OpenAiClient.ts#L833)

Since v4.0.0