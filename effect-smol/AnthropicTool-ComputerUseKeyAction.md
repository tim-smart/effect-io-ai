Package: `@effect/ai-anthropic`<br />
Module: `AnthropicTool`<br />

## AnthropicTool.ComputerUseKeyAction

Computer-use action payload for pressing a key or key combination.

**When to use**

Use when typing parsed computer-use key action payloads after schema
validation, where provider-specific key-name validation is handled outside
TypeScript.

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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicTool.ts#L640)

Since v4.0.0