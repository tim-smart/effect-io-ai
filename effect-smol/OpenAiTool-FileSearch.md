Package: `@effect/ai-openai`<br />
Module: `OpenAiTool`<br />

## OpenAiTool.FileSearch

Defines the OpenAI File Search tool that enables the model to search through uploaded
files and vector stores.

**When to use**

Use to let an OpenAI model search uploaded files through one or more vector
stores.

**Details**

The tool requires `vector_store_ids` and accepts optional `filters`,
`max_num_results`, and `ranking_options`. Successful tool calls expose the
search `status`, generated `queries`, and optional `results`.

**Signature**

```ts
declare const FileSearch: <Mode extends Tool.FailureMode | undefined = undefined>(args: { readonly vector_store_ids: ReadonlyArray<string>; readonly max_num_results?: number | undefined; readonly ranking_options?: { readonly ranker?: "auto" | "default-2024-11-15" | undefined; readonly score_threshold?: number | undefined; readonly hybrid_search?: Schema.Struct.ReadonlySide<{ readonly embedding_weight: Schema.Number; readonly text_weight: Schema.Number; }, "Encoded"> | undefined; } | undefined; readonly filters?: Schema.Struct.ReadonlySide<{ readonly type: Schema.Literals<readonly ["eq", "ne", "gt", "gte", "lt", "lte", "in", "nin"]>; readonly key: Schema.String; readonly value: Schema.Union<readonly [Schema.String, Schema.Number, Schema.Boolean, Schema.$Array<Schema.Union<readonly [Schema.String, Schema.Number]>>]>; }, "Encoded"> | Schema.Struct.ReadonlySide<{ readonly type: Schema.Literals<readonly ["and", "or"]>; readonly filters: Schema.$Array<Schema.Union<readonly [Schema.Struct<{ readonly type: Schema.Literals<readonly ["eq", "ne", "gt", "gte", "lt", "lte", "in", "nin"]>; readonly key: Schema.String; readonly value: Schema.Union<readonly [Schema.String, Schema.Number, Schema.Boolean, Schema.$Array<Schema.Union<readonly [Schema.String, Schema.Number]>>]>; }>, Schema.Unknown]>>; }, "Encoded"> | null | undefined; }) => Tool.ProviderDefined<"openai.file_search", "OpenAiFileSearch", { readonly args: Schema.Struct<{ readonly filters: Schema.optionalKey<Schema.Union<readonly [Schema.Union<readonly [Schema.Struct<{ readonly type: Schema.Literals<readonly ["eq", "ne", "gt", "gte", "lt", "lte", "in", "nin"]>; readonly key: Schema.String; readonly value: Schema.Union<readonly [Schema.String, Schema.Number, Schema.Boolean, Schema.$Array<Schema.Union<readonly [Schema.String, Schema.Number]>>]>; }>, Schema.Struct<{ readonly type: Schema.Literals<readonly ["and", "or"]>; readonly filters: Schema.$Array<Schema.Union<readonly [Schema.Struct<{ readonly type: Schema.Literals<readonly ["eq", "ne", "gt", "gte", "lt", "lte", "in", "nin"]>; readonly key: Schema.String; readonly value: Schema.Union<readonly [Schema.String, Schema.Number, Schema.Boolean, Schema.$Array<Schema.Union<readonly [Schema.String, Schema.Number]>>]>; }>, Schema.Unknown]>>; }>]>, Schema.Null]>>; readonly max_num_results: Schema.optionalKey<Schema.Number>; readonly ranking_options: Schema.optionalKey<Schema.Struct<{ readonly ranker: Schema.optionalKey<Schema.Literals<readonly ["auto", "default-2024-11-15"]>>; readonly score_threshold: Schema.optionalKey<Schema.Number>; readonly hybrid_search: Schema.optionalKey<Schema.Struct<{ readonly embedding_weight: Schema.Number; readonly text_weight: Schema.Number; }>>; }>>; readonly vector_store_ids: Schema.$Array<Schema.String>; }>; readonly parameters: Schema.Void; readonly success: Schema.Struct<{ readonly status: Schema.Literals<readonly ["in_progress", "searching", "completed", "incomplete", "failed"]>; readonly queries: Schema.$Array<Schema.String>; readonly results: Schema.optionalKey<Schema.Union<readonly [Schema.$Array<Schema.Struct<{ readonly file_id: Schema.optionalKey<Schema.String>; readonly text: Schema.optionalKey<Schema.String>; readonly filename: Schema.optionalKey<Schema.String>; readonly attributes: Schema.optionalKey<Schema.Union<readonly [Schema.Struct<{}>, Schema.Null]>>; readonly score: Schema.optionalKey<Schema.Number>; }>>, Schema.Null]>>; }>; readonly failure: Schema.Never; readonly failureMode: Mode extends undefined ? "error" : Mode; }, false>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openai/src/OpenAiTool.ts#L111)

Since v4.0.0