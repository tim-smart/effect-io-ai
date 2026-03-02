Package: `@effect/ai-anthropic`<br />
Module: `AnthropicTool`<br />

## AnthropicTool.CodeExecution_20250522

Anthropic Code Execution tool (2025-05-22 version).

Allows the model to execute code in a sandboxed environment with support
for multiple execution types including programmatic tool calls, bash
execution, and text editor operations.

**Signature**

```ts
declare const CodeExecution_20250522: <Mode extends Tool.FailureMode | undefined = undefined>(args: void) => Tool.ProviderDefined<"anthropic.code_execution_20250522", "AnthropicCodeExecution", { readonly args: Schema.Void; readonly parameters: Schema.Union<readonly [Schema.Struct<{ readonly type: Schema.Literal<"programmatic-tool-call">; readonly code: Schema.String; }>, Schema.Struct<{ readonly type: Schema.Literal<"bash_code_execution">; readonly command: Schema.String; }>, Schema.Struct<{ readonly type: Schema.Literal<"text_editor_code_execution">; readonly command: Schema.Literal<"view">; readonly path: Schema.String; }>, Schema.Struct<{ readonly type: Schema.Literal<"text_editor_code_execution">; readonly command: Schema.Literal<"create">; readonly path: Schema.String; readonly file_text: Schema.optional<Schema.NullOr<Schema.String>>; }>, Schema.Struct<{ readonly type: Schema.Literal<"text_editor_code_execution">; readonly command: Schema.Literal<"str_replace">; readonly path: Schema.String; readonly old_str: Schema.String; readonly new_str: Schema.String; }>]>; readonly success: Schema.Struct<{ readonly content: Schema.$Array<Schema.Struct<{ readonly file_id: Schema.String; readonly type: Schema.Literal<"code_execution_output">; }>>; readonly return_code: Schema.Number; readonly stderr: Schema.String; readonly stdout: Schema.String; readonly type: Schema.Literal<"code_execution_result">; }>; readonly failure: Schema.Struct<{ readonly error_code: Schema.Literals<readonly ["invalid_tool_input", "unavailable", "too_many_requests", "execution_time_exceeded"]>; readonly type: Schema.Literal<"code_execution_tool_result_error">; }>; readonly failureMode: Mode extends undefined ? "error" : Mode; }, false>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicTool.ts#L245)

Since v1.0.0