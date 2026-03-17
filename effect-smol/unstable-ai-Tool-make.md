Package: `effect`<br />
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
import { Schema } from "effect"
import { Tool } from "effect/unstable/ai"

// Simple tool with no parameters
const GetCurrentTime = Tool.make("GetCurrentTime", {
  description: "Returns the current timestamp",
  success: Schema.Number
})
```

**Signature**

```ts
declare const make: <const Name extends string, Parameters extends Schema.Top = EmptyParams, Success extends Schema.Top = Schema.Void, Failure extends Schema.Top = Schema.Never, Mode extends FailureMode | undefined = undefined, Dependencies extends Array<ServiceMap.Key<any, any> | ServiceMap.Key<never, any>> = []>(name: Name, options?: { readonly description?: string | undefined; readonly parameters?: Parameters | undefined; readonly success?: Success | undefined; readonly failure?: Failure | undefined; readonly failureMode?: Mode; readonly dependencies?: Dependencies | undefined; readonly needsApproval?: NeedsApproval<Parameters> | undefined; }) => Tool<Name, { readonly parameters: Parameters; readonly success: Success; readonly failure: Failure; readonly failureMode: Mode extends undefined ? "error" : Mode; }, ServiceMap.Service.Identifier<Dependencies[number]>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Tool.ts#L1150)

Since v1.0.0