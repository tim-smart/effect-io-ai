Package: `@effect/ai-anthropic`<br />
Module: `AnthropicConfig`<br />

## AnthropicConfig.AnthropicConfig.Service

Configuration provided through `AnthropicConfig`.

**Details**

Use `transformClient` to wrap or replace the `HttpClient` used by generated Anthropic API requests.

**Signature**

```ts
export interface Service {
    readonly transformClient?: ((client: HttpClient) => HttpClient) | undefined
  }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicConfig.ts#L58)

Since v4.0.0