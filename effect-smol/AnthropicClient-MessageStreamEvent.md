Package: `@effect/ai-anthropic`<br />
Module: `AnthropicClient`<br />

## AnthropicClient.MessageStreamEvent

Represents an event received from the Anthropic Messages API during a
streaming request.

Events include:
- `message_start`: Initial event containing message metadata
- `message_delta`: Incremental updates to the message (e.g., stop reason)
- `message_stop`: Final event indicating the message is complete
- `content_block_start`: Start of a content block
- `content_block_delta`: Incremental content updates (text, tool use, etc.)
- `content_block_stop`: End of a content block
- `error`: Error events with type and message

**Signature**

```ts
type MessageStreamEvent = | typeof Generated.BetaMessageStartEvent.Type
  | typeof Generated.BetaMessageDeltaEvent.Type
  | typeof Generated.BetaMessageStopEvent.Type
  | typeof Generated.BetaContentBlockStartEvent.Type
  | typeof Generated.BetaContentBlockDeltaEvent.Type
  | typeof Generated.BetaContentBlockStopEvent.Type
  | typeof Generated.BetaErrorResponse.Type
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicClient.ts#L119)

Since v1.0.0