Package: `@effect/ai-anthropic`<br />
Module: `AnthropicTool`<br />

## AnthropicTool.ComputerUseKeyAction

Computer-use action payload for pressing a key or key combination.

**Details**

The payload uses `action: "key"` and stores the key or key combination to
press in `text`, such as `"Return"`, `"ctrl+c"`, or `"ctrl+s"`.

**Gotchas**

`text` is typed as `string`; the paired schema does not validate
provider-specific key names or key combinations.

**Signature**

```ts
type ComputerUseKeyAction = typeof ComputerUseKeyAction.Type
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicTool.ts#L672)

Since v4.0.0