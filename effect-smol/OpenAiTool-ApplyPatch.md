Package: `@effect/ai-openai`<br />
Module: `OpenAiTool`<br />

## OpenAiTool.ApplyPatch

OpenAI Apply Patch tool.

Allows the model to apply diffs by creating, deleting, or updating files.
This is a local tool that runs in your environment and requires a handler
to execute file operations.

**Signature**

```ts
declare const ApplyPatch: <Mode extends Tool.FailureMode | undefined = undefined>(args: { readonly failureMode?: Mode | undefined; }) => Tool.ProviderDefined<"openai.apply_patch", "OpenAiApplyPatch", { readonly args: Schema.Void; readonly parameters: Schema.Struct<{ readonly call_id: Schema.String; readonly operation: Schema.Union<readonly [Schema.Struct<{ readonly type: Schema.Literal<"create_file">; readonly path: Schema.String; readonly diff: Schema.String; }>, Schema.Struct<{ readonly type: Schema.Literal<"delete_file">; readonly path: Schema.String; }>, Schema.Struct<{ readonly type: Schema.Literal<"update_file">; readonly path: Schema.String; readonly diff: Schema.String; }>]>; }>; readonly success: Schema.Struct<{ readonly status: Schema.Literals<readonly ["completed", "failed"]>; readonly output: Schema.optionalKey<Schema.Union<readonly [Schema.String, Schema.Null]>>; }>; readonly failure: Schema.Never; readonly failureMode: Mode extends undefined ? "error" : Mode; }, true>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openai/src/OpenAiTool.ts#L40)

Since v1.0.0