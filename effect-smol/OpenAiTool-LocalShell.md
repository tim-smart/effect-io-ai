Package: `@effect/ai-openai`<br />
Module: `OpenAiTool`<br />

## OpenAiTool.LocalShell

OpenAI Local Shell tool that enables the model to run a command with a local
shell. This local tool runs in your environment and requires a handler to
execute commands.

**When to use**

Use to let an OpenAI model request local shell commands that your application
executes through a handler.

**Details**

The tool exposes a provider-defined `local_shell` call. It is marked as
handler-required, so applications must provide the command execution policy
and implementation.

**Signature**

```ts
declare const LocalShell: <Mode extends Tool.FailureMode | undefined = undefined>(args: { readonly failureMode?: Mode | undefined; }) => Tool.ProviderDefined<"openai.local_shell", "OpenAiLocalShell", { readonly args: Schema.Void; readonly parameters: Schema.Struct<{ readonly action: Schema.Struct<{ readonly type: Schema.Literal<"exec">; readonly command: Schema.$Array<Schema.String>; readonly timeout_ms: Schema.optionalKey<Schema.Union<readonly [Schema.Number, Schema.Null]>>; readonly working_directory: Schema.optionalKey<Schema.Union<readonly [Schema.String, Schema.Null]>>; readonly env: Schema.Struct<{}>; readonly user: Schema.optionalKey<Schema.Union<readonly [Schema.String, Schema.Null]>>; }>; }>; readonly success: Schema.Struct<{ readonly output: Schema.String; }>; readonly failure: Schema.Never; readonly failureMode: Mode extends undefined ? "error" : Mode; }, true>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openai/src/OpenAiTool.ts#L205)

Since v4.0.0