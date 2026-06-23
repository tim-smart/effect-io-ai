Package: `@effect/ai-openai`<br />
Module: `OpenAiTool`<br />

## OpenAiTool.CodeInterpreter

Defines the OpenAI Code Interpreter tool that allows the model to execute Python code in
a sandboxed environment.

**When to use**

Use to enable OpenAI-hosted Python execution for a model response.

**Details**

The tool is configured with a `container` argument. Successful tool calls
expose `outputs`, which may contain logs or generated images, or `null` when
no outputs are available.

**Signature**

```ts
declare const CodeInterpreter: <Mode extends Tool.FailureMode | undefined = undefined>(args: { readonly container: string | { readonly type: "auto"; readonly file_ids?: ReadonlyArray<string> | undefined; readonly memory_limit?: "1g" | "4g" | "16g" | "64g" | null | undefined; readonly network_policy?: Schema.Struct.ReadonlySide<{ readonly type: Schema.Literal<"disabled">; }, "Encoded"> | { readonly type: "allowlist"; readonly allowed_domains: ReadonlyArray<string>; readonly domain_secrets?: ReadonlyArray<Schema.Struct.ReadonlySide<{ readonly domain: Schema.String; readonly name: Schema.String; readonly value: Schema.String; }, "Encoded">> | undefined; } | undefined; }; }) => Tool.ProviderDefined<"openai.code_interpreter", "OpenAiCodeInterpreter", { readonly args: Schema.Struct<{ readonly container: Schema.Union<readonly [Schema.String, Schema.Struct<{ readonly type: Schema.Literal<"auto">; readonly file_ids: Schema.optionalKey<Schema.$Array<Schema.String>>; readonly memory_limit: Schema.optionalKey<Schema.Union<readonly [Schema.Literals<readonly ["1g", "4g", "16g", "64g"]>, Schema.Null]>>; readonly network_policy: Schema.optionalKey<Schema.Union<readonly [Schema.Struct<{ readonly type: Schema.Literal<"disabled">; }>, Schema.Struct<{ readonly type: Schema.Literal<"allowlist">; readonly allowed_domains: Schema.$Array<Schema.String>; readonly domain_secrets: Schema.optionalKey<Schema.$Array<Schema.Struct<{ readonly domain: Schema.String; readonly name: Schema.String; readonly value: Schema.String; }>>>; }>]>>; }>]>; }>; readonly parameters: Schema.Struct<{ readonly code: Schema.Union<readonly [Schema.String, Schema.Null]>; readonly container_id: Schema.String; }>; readonly success: Schema.Struct<{ readonly outputs: Schema.Union<readonly [Schema.$Array<Schema.Union<readonly [Schema.Struct<{ readonly type: Schema.Literal<"logs">; readonly logs: Schema.String; }>, Schema.Struct<{ readonly type: Schema.Literal<"image">; readonly url: Schema.String; }>]>>, Schema.Null]>; }>; readonly failure: Schema.Never; readonly failureMode: Mode extends undefined ? "error" : Mode; }, false>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openai/src/OpenAiTool.ts#L77)

Since v4.0.0