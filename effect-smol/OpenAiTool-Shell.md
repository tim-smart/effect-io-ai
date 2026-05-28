Package: `@effect/ai-openai`<br />
Module: `OpenAiTool`<br />

## OpenAiTool.Shell

Defines the OpenAI shell tool for model-requested command execution.

**When to use**

Use to let an OpenAI model request shell commands that your application
executes through a handler.

**Details**

The tool exposes a provider-defined `shell` call. It is marked as
handler-required, so applications must provide the command execution policy
and implementation.

**Signature**

```ts
declare const Shell: <Mode extends Tool.FailureMode | undefined = undefined>(args: { readonly failureMode?: Mode | undefined; }) => Tool.ProviderDefined<"openai.shell", "OpenAiShell", { readonly args: Schema.Void; readonly parameters: Schema.Struct<{ readonly action: Schema.Struct<{ readonly commands: Schema.$Array<Schema.String>; readonly timeout_ms: Schema.Union<readonly [Schema.Number, Schema.Null]>; readonly max_output_length: Schema.Union<readonly [Schema.Number, Schema.Null]>; }>; }>; readonly success: Schema.Struct<{ readonly output: Schema.$Array<Schema.Struct<{ readonly stdout: Schema.String; readonly stderr: Schema.String; readonly outcome: Schema.Union<readonly [Schema.Struct<{ readonly type: Schema.Literal<"timeout">; }>, Schema.Struct<{ readonly type: Schema.Literal<"exit">; readonly exit_code: Schema.Number; }>]>; readonly created_by: Schema.optionalKey<Schema.String>; }>>; }>; readonly failure: Schema.Never; readonly failureMode: Mode extends undefined ? "error" : Mode; }, true>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openai/src/OpenAiTool.ts#L282)

Since v4.0.0