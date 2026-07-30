Package: `@effect/ai`<br />
Module: `Prompt`<br />

## Prompt.BasePartEncoded

Base interface for encoded content parts.

**Signature**

```ts
export interface BasePartEncoded<Type extends string, Options extends ProviderOptions> {
  /**
   * The type of this content part.
   */
  readonly type: Type
  /**
   * Provider-specific options for this part.
   */
  readonly options?: Options | undefined
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Prompt.ts#L181)

Since v1.0.0