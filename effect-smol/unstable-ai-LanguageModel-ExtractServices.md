Package: `effect`<br />
Module: `LanguageModel`<br />

## LanguageModel.ExtractServices

Utility type that extracts the context requirements from LanguageModel options.

Automatically infers the required services based on the toolkit configuration.

**Signature**

```ts
type ExtractServices<Options> = Options extends {
  readonly disableToolCallResolution: true
} ? never
  : Options extends {
    readonly toolkit: Toolkit.WithHandler<infer _Tools>
  }
  // Required for tool call execution
    ?
      | Tool.ResultEncodingServices<_Tools[keyof _Tools]>
      // Required for decoding large language model responses
      | Tool.ResultDecodingServices<_Tools[keyof _Tools]>
  : Options extends {
    readonly toolkit: Effect.Yieldable<
      Toolkit.Toolkit<infer _Tools>,
      Toolkit.WithHandler<infer _Tools>,
      infer _E,
      infer _R
    >
  }
  // Required for tool call execution
    ?
      | Tool.ResultEncodingServices<_Tools[keyof _Tools]>
      // Required for decoding large language model responses
      | Tool.ResultDecodingServices<_Tools[keyof _Tools]>
      | _R
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/LanguageModel.ts#L529)

Since v4.0.0