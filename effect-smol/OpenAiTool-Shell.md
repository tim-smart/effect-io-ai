Package: `@effect/ai-openai`<br />
Module: `OpenAiTool`<br />

## OpenAiTool.Shell

OpenAI Function Shell tool.

Enables the model to execute one or more shell commands in a managed
environment. This is a local tool that runs in your environment and requires
a handler to execute commands.

**Signature**

```ts
declare const Shell: <Mode extends Tool.FailureMode | undefined = undefined>(args: { readonly failureMode?: Mode | undefined; }) => Tool.ProviderDefined<"openai.shell", "OpenAiShell", { readonly args: Schema.Void; readonly parameters: Schema.Struct<{ readonly action: Schema.Struct<{ readonly commands: Schema.$Array<Schema.String>; readonly timeout_ms: Schema.Union<readonly [Schema.Number, Schema.Null]>; readonly max_output_length: Schema.Union<readonly [Schema.Number, Schema.Null]>; }>; }>; readonly success: Schema.Struct<{ readonly output: Schema.$Array<Schema.Struct<{ readonly stdout: Schema.String; readonly stderr: Schema.String; readonly outcome: Schema.Union<readonly [Schema.Struct<{ readonly type: Schema.Literal<"timeout">; }>, Schema.Struct<{ readonly type: Schema.Literal<"exit">; readonly exit_code: Schema.Number; }>]>; }>>; }>; readonly failure: Schema.Never; readonly failureMode: Mode extends undefined ? "error" : Mode; }, true>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openai/src/OpenAiTool.ts#L197)

Since v1.0.0