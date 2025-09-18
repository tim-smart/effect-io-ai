Package: `@effect/ai-google`<br />
Module: `GoogleTool`<br />

## GoogleTool.GoogleSearchRetrieval

Gemini 1.5 support a legacy tool named `google_search_retrieval`. This tool
provides a dynamic mode that allows the model to decide whether to perform a
search based on its confidence that the prompt requires fresh information.

If the model's confidence is above a `dynamic_threshold` you set (a value
between `0.0` and `1.0`), it will perform a search.

**Note**: The `google_search` tool is recommended for Gemini 2.0 and later.

**Signature**

```ts
declare const GoogleSearchRetrieval: (args: { readonly mode?: "MODE_UNSPECIFIED" | "MODE_DYNAMIC" | null | undefined; readonly dynamicThreshold?: number | null | undefined; }) => Tool.ProviderDefined<"GoogleSearchRetrieval", { readonly args: Struct<{ readonly mode: optionalWith<typeof Generated.DynamicRetrievalConfigMode, { nullable: true; }>; readonly dynamicThreshold: optionalWith<typeof Number$, { nullable: true; }>; }>; readonly parameters: Struct<{}>; readonly success: typeof Void; readonly failure: typeof Never; }, false>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/google/src/GoogleTool.ts#L44)

Since v1.0.0