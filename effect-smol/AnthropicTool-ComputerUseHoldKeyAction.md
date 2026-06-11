Package: `@effect/ai-anthropic`<br />
Module: `AnthropicTool`<br />

## AnthropicTool.ComputerUseHoldKeyAction

Computer-use action payload for holding a key for a specified duration.

**When to use**

Use to represent a key that should remain pressed for a measured interval.

**Details**

Set `action` to `"hold_key"`, `text` to the key to hold, and `duration` to
the number of seconds to hold it.

**See**

- `ComputerUseKeyAction` for a single key press or key combination without a hold duration

**Signature**

```ts
type ComputerUseHoldKeyAction = typeof ComputerUseHoldKeyAction.Type
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicTool.ts#L895)

Since v4.0.0