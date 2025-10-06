Package: `@effect/ai`<br />
Module: `LanguageModel`<br />

## LanguageModel.ExtractContext

Utility type that extracts the context requirements from LanguageModel options.

Automatically infers the required services based on the toolkit configuration.

**Signature**

```ts
type ExtractContext<Options> = Options extends {
  readonly toolkit: Toolkit.WithHandler<infer _Tools>
} ? Tool.Requirements<_Tools[keyof _Tools]>
  : Options extends {
    readonly toolkit: Effect.Effect<Toolkit.WithHandler<infer _Tools>, infer _E, infer _R>
  } ? Tool.Requirements<_Tools[keyof _Tools]> | _R
  : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/LanguageModel.ts#L441)

Since v1.0.0