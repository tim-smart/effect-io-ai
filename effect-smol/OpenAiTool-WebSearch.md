Package: `@effect/ai-openai`<br />
Module: `OpenAiTool`<br />

## OpenAiTool.WebSearch

OpenAI Web Search tool.

Enables the model to search the web for information.

**Signature**

```ts
declare const WebSearch: <Mode extends Tool.FailureMode | undefined = undefined>(args: { readonly filters?: { readonly allowed_domains?: ReadonlyArray<string> | null | undefined; } | null | undefined; readonly user_location?: { readonly type?: "approximate" | undefined; readonly country?: string | null | undefined; readonly region?: string | null | undefined; readonly city?: string | null | undefined; readonly timezone?: string | null | undefined; } | null | undefined; readonly search_context_size?: "low" | "medium" | "high" | undefined; }) => Tool.ProviderDefined<"openai.web_search", "OpenAiWebSearch", { readonly args: Schema.Struct<{ readonly filters: Schema.optionalKey<Schema.Union<readonly [Schema.Struct<{ readonly allowed_domains: Schema.optionalKey<Schema.Union<readonly [Schema.$Array<Schema.String>, Schema.Null]>>; }>, Schema.Null]>>; readonly user_location: Schema.optionalKey<Schema.Union<readonly [Schema.Struct<{ readonly type: Schema.optionalKey<Schema.Literal<"approximate">>; readonly country: Schema.optionalKey<Schema.Union<readonly [Schema.String, Schema.Null]>>; readonly region: Schema.optionalKey<Schema.Union<readonly [Schema.String, Schema.Null]>>; readonly city: Schema.optionalKey<Schema.Union<readonly [Schema.String, Schema.Null]>>; readonly timezone: Schema.optionalKey<Schema.Union<readonly [Schema.String, Schema.Null]>>; }>, Schema.Null]>>; readonly search_context_size: Schema.optionalKey<Schema.Literals<readonly ["low", "medium", "high"]>>; }>; readonly parameters: Schema.Struct<{ readonly action: Schema.Union<readonly [Schema.Struct<{ readonly type: Schema.Literal<"search">; readonly query: Schema.optionalKey<Schema.String>; readonly queries: Schema.optionalKey<Schema.$Array<Schema.String>>; readonly sources: Schema.optionalKey<Schema.$Array<Schema.Struct<{ readonly type: Schema.Literal<"url">; readonly url: Schema.String; }>>>; }>, Schema.Struct<{ readonly type: Schema.Literal<"open_page">; readonly url: Schema.optionalKey<Schema.Union<readonly [Schema.String, Schema.Null]>>; }>, Schema.Struct<{ readonly type: Schema.Literal<"find_in_page">; readonly url: Schema.String; readonly pattern: Schema.String; }>]>; }>; readonly success: Schema.Struct<{ readonly action: Schema.Union<readonly [Schema.Struct<{ readonly type: Schema.Literal<"search">; readonly query: Schema.optionalKey<Schema.String>; readonly queries: Schema.optionalKey<Schema.$Array<Schema.String>>; readonly sources: Schema.optionalKey<Schema.$Array<Schema.Struct<{ readonly type: Schema.Literal<"url">; readonly url: Schema.String; }>>>; }>, Schema.Struct<{ readonly type: Schema.Literal<"open_page">; readonly url: Schema.optionalKey<Schema.Union<readonly [Schema.String, Schema.Null]>>; }>, Schema.Struct<{ readonly type: Schema.Literal<"find_in_page">; readonly url: Schema.String; readonly pattern: Schema.String; }>]>; readonly status: Schema.Literals<readonly ["in_progress", "searching", "completed", "failed"]>; }>; readonly failure: Schema.Never; readonly failureMode: Mode extends undefined ? "error" : Mode; }, false>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openai/src/OpenAiTool.ts#L218)

Since v1.0.0