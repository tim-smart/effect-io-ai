Package: `effect`<br />
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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Prompt.ts#L171)

Since v4.0.0