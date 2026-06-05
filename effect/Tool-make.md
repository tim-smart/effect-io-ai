Package: `@effect/ai`<br />
Module: `Tool`<br />

## Tool.make

Creates a user-defined tool with the specified name and configuration.

This is the primary constructor for creating custom tools that AI models
can call. The tool definition includes parameter validation, success/failure
schemas, and optional service dependencies.

If a tool accepts no parameters but still needs an explicit empty object
schema, use `EmptyParams`.

**Example**

```ts
import { Tool } from "@effect/ai"
import { Schema } from "effect"

// Simple tool with no parameters
const GetCurrentTime = Tool.make("GetCurrentTime", {
  description: "Returns the current timestamp",
  success: Schema.Number
})
```

**Signature**

```ts
declare const make: <const Name extends string, Parameters extends Schema.Struct.Fields | EmptyParams = EmptyParams, Success extends Schema.Schema.Any = typeof Schema.Void, Failure extends Schema.Schema.All = typeof Schema.Never, Mode extends FailureMode | undefined = undefined, Dependencies extends Array<Context.Tag<any, any>> = []>(name: Name, options?: { readonly description?: string | undefined; readonly parameters?: Parameters | undefined; readonly success?: Success | undefined; readonly failure?: Failure | undefined; readonly failureMode?: Mode; readonly dependencies?: Dependencies | undefined; }) => Tool<Name, { readonly parameters: Parameters extends EmptyParams ? EmptyParams : Parameters extends Schema.Struct.Fields ? Schema.Struct<Parameters> : never; readonly success: Success; readonly failure: Failure; readonly failureMode: Mode extends undefined ? "error" : Mode; }, Context.Tag.Identifier<Dependencies[number]>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Tool.ts#L950)

Since v1.0.0