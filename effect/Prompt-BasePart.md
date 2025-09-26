Package: `@effect/ai`<br />
Module: `Prompt`<br />

## Prompt.BasePart

Base interface for all content parts.

Provides common structure including type and provider options.

**Signature**

```ts
export interface BasePart<Type extends string, Options extends ProviderOptions> {
  readonly [PartTypeId]: PartTypeId
  /**
   * The type of this content part.
   */
  readonly type: Type
  /**
   * Provider-specific options for this part.
   */
  readonly options: Options
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Prompt.ts#L163)

Since v1.0.0