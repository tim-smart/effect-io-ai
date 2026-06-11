Package: `@effect/ai-anthropic`<br />
Module: `AnthropicTool`<br />

## AnthropicTool.ComputerUseZoomAction

Computer-use action payload for zooming into a specific screen region.

**Gotchas**

The enclosing computer-use tool must be configured with `enableZoom: true`.
`region` is only a four-number tuple and does not validate corner ordering or
display bounds.

**Signature**

```ts
type ComputerUseZoomAction = typeof ComputerUseZoomAction.Type
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicTool.ts#L1261)

Since v4.0.0