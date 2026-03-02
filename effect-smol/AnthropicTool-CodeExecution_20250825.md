Package: `@effect/ai-anthropic`<br />
Module: `AnthropicTool`<br />

## AnthropicTool.CodeExecution_20250825

Anthropic Code Execution tool (2025-08-25 version).

Allows the model to execute code in a sandboxed environment.

**Signature**

```ts
declare const CodeExecution_20250825: <Mode extends Tool.FailureMode | undefined = undefined>(args: void) => Tool.ProviderDefined<"anthropic.code_execution_20250825", "AnthropicCodeExecution", { readonly args: Schema.Void; readonly parameters: Schema.Struct<{ readonly code: Schema.String; }>; readonly success: Schema.Union<readonly [Schema.Struct<{ readonly content: Schema.$Array<Schema.Struct<{ readonly file_id: Schema.String; readonly type: Schema.Literal<"code_execution_output">; }>>; readonly return_code: Schema.Number; readonly stderr: Schema.String; readonly stdout: Schema.String; readonly type: Schema.Literal<"code_execution_result">; }>, Schema.Struct<{ readonly content: Schema.$Array<Schema.Struct<{ readonly file_id: Schema.String; readonly type: Schema.Literal<"bash_code_execution_output">; }>>; readonly return_code: Schema.Number; readonly stderr: Schema.String; readonly stdout: Schema.String; readonly type: Schema.Literal<"bash_code_execution_result">; }>, Schema.Struct<{ readonly content: Schema.String; readonly file_type: Schema.Literals<readonly ["text", "image", "pdf"]>; readonly num_lines: Schema.Union<readonly [Schema.Number, Schema.Null]>; readonly start_line: Schema.Union<readonly [Schema.Number, Schema.Null]>; readonly total_lines: Schema.Union<readonly [Schema.Number, Schema.Null]>; readonly type: Schema.Literal<"text_editor_code_execution_view_result">; }>, Schema.Struct<{ readonly is_file_update: Schema.Boolean; readonly type: Schema.Literal<"text_editor_code_execution_create_result">; }>, Schema.Struct<{ readonly lines: Schema.Union<readonly [Schema.$Array<Schema.String>, Schema.Null]>; readonly new_lines: Schema.Union<readonly [Schema.Number, Schema.Null]>; readonly new_start: Schema.Union<readonly [Schema.Number, Schema.Null]>; readonly old_lines: Schema.Union<readonly [Schema.Number, Schema.Null]>; readonly old_start: Schema.Union<readonly [Schema.Number, Schema.Null]>; readonly type: Schema.Literal<"text_editor_code_execution_str_replace_result">; }>]>; readonly failure: Schema.Union<readonly [Schema.Struct<{ readonly error_code: Schema.Literals<readonly ["invalid_tool_input", "unavailable", "too_many_requests", "execution_time_exceeded"]>; readonly type: Schema.Literal<"code_execution_tool_result_error">; }>, Schema.Struct<{ readonly error_code: Schema.Literals<readonly ["invalid_tool_input", "unavailable", "too_many_requests", "execution_time_exceeded", "output_file_too_large"]>; readonly type: Schema.Literal<"bash_code_execution_tool_result_error">; }>, Schema.Struct<{ readonly error_code: Schema.Literals<readonly ["invalid_tool_input", "unavailable", "too_many_requests", "execution_time_exceeded", "file_not_found"]>; readonly error_message: Schema.Union<readonly [Schema.String, Schema.Null]>; readonly type: Schema.Literal<"text_editor_code_execution_tool_result_error">; }>]>; readonly failureMode: Mode extends undefined ? "error" : Mode; }, false>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicTool.ts#L262)

Since v1.0.0