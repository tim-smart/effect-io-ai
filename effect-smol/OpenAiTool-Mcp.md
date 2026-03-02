Package: `@effect/ai-openai`<br />
Module: `OpenAiTool`<br />

## OpenAiTool.Mcp

OpenAI MCP tool.

Gives the model access to additional tools via remote Model Context Protocol
(MCP) servers

**Signature**

```ts
declare const Mcp: <Mode extends Tool.FailureMode | undefined = undefined>(args: { readonly server_label: string; readonly server_url?: string | undefined; readonly connector_id?: "connector_dropbox" | "connector_gmail" | "connector_googlecalendar" | "connector_googledrive" | "connector_microsoftteams" | "connector_outlookcalendar" | "connector_outlookemail" | "connector_sharepoint" | undefined; readonly authorization?: string | undefined; readonly server_description?: string | undefined; readonly allowed_tools?: ReadonlyArray<string> | { readonly tool_names?: ReadonlyArray<string> | undefined; readonly read_only?: boolean | undefined; } | null | undefined; readonly require_approval?: "always" | "never" | { readonly always?: { readonly tool_names?: ReadonlyArray<string> | undefined; readonly read_only?: boolean | undefined; } | undefined; readonly never?: { readonly tool_names?: ReadonlyArray<string> | undefined; readonly read_only?: boolean | undefined; } | undefined; } | null | undefined; }) => Tool.ProviderDefined<"openai.mcp", "OpenAiMcp", { readonly args: Schema.Struct<{ readonly allowed_tools: Schema.optionalKey<Schema.Union<readonly [Schema.Union<readonly [Schema.$Array<Schema.String>, Schema.Struct<{ readonly tool_names: Schema.optionalKey<Schema.$Array<Schema.String>>; readonly read_only: Schema.optionalKey<Schema.Boolean>; }>]>, Schema.Null]>>; readonly authorization: Schema.optionalKey<Schema.String>; readonly connector_id: Schema.optionalKey<Schema.Literals<readonly ["connector_dropbox", "connector_gmail", "connector_googlecalendar", "connector_googledrive", "connector_microsoftteams", "connector_outlookcalendar", "connector_outlookemail", "connector_sharepoint"]>>; readonly require_approval: Schema.optionalKey<Schema.Union<readonly [Schema.Union<readonly [Schema.Struct<{ readonly always: Schema.optionalKey<Schema.Struct<{ readonly tool_names: Schema.optionalKey<Schema.$Array<Schema.String>>; readonly read_only: Schema.optionalKey<Schema.Boolean>; }>>; readonly never: Schema.optionalKey<Schema.Struct<{ readonly tool_names: Schema.optionalKey<Schema.$Array<Schema.String>>; readonly read_only: Schema.optionalKey<Schema.Boolean>; }>>; }>, Schema.Literals<readonly ["always", "never"]>]>, Schema.Null]>>; readonly server_description: Schema.optionalKey<Schema.String>; readonly server_label: Schema.String; readonly server_url: Schema.optionalKey<Schema.String>; }>; readonly parameters: Schema.Void; readonly success: Schema.Struct<{ readonly type: Schema.Literal<"mcp_call">; readonly name: Schema.String; readonly arguments: Schema.String; readonly output: Schema.optionalKey<Schema.Union<readonly [Schema.String, Schema.Null]>>; readonly error: Schema.optionalKey<Schema.Union<readonly [Schema.String, Schema.Null]>>; readonly server_label: Schema.String; }>; readonly failure: Schema.Never; readonly failureMode: Mode extends undefined ? "error" : Mode; }, false>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openai/src/OpenAiTool.ts#L164)

Since v1.0.0