Package: `effect`<br />
Module: `Prompt`<br />

## Prompt.BasePart

Base interface for all content parts.

Provides common structure including type and provider options.

**Signature**

```ts
export interface BasePart<Type extends string, Options extends ProviderOptions> {
  readonly [PartTypeId]: typeof PartTypeId
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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Prompt.ts#L157)

Since v4.0.0