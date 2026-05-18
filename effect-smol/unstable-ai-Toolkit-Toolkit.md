Package: `effect`<br />
Module: `Toolkit`<br />

## Toolkit.Toolkit

Represents a collection of tools which can be used to enhance the
capabilities of a large language model.

**Example** (Defining AI toolkits)

```ts
import { Schema } from "effect"
import { Tool, Toolkit } from "effect/unstable/ai"

const SearchDocs = Tool.make("SearchDocs", {
  description: "Search project documentation",
  parameters: Schema.Struct({ query: Schema.String }),
  success: Schema.Array(Schema.String)
})

const SummarizeText = Tool.make("SummarizeText", {
  description: "Summarize text",
  parameters: Schema.Struct({ text: Schema.String }),
  success: Schema.String
})

const AiToolkit = Toolkit.make(SearchDocs, SummarizeText)

console.log(Object.keys(AiToolkit.tools))
// ["SearchDocs", "SummarizeText"]
```

**Signature**

```ts
export interface Toolkit<in out Tools extends Record<string, Tool.Any>> extends
  Effect.Effect<
    WithHandler<Tools>,
    never,
    Tool.HandlersFor<Tools>
  >
{
  new(_: never): {}

  readonly [TypeId]: typeof TypeId

  /**
   * A record containing all tools in this toolkit.
   */
  readonly tools: Tools

  /**
   * A helper method which can be used for type-safe handler declarations.
   */
  of<Handlers extends HandlersFrom<Tools>>(handlers: Handlers): Handlers

  /**
   * Converts a toolkit into a `Context` containing handlers for each tool
   * in the toolkit.
   */
  toHandlers<Handlers extends HandlersFrom<Tools>, EX = never, RX = never>(
    build: Handlers | Effect.Effect<Handlers, EX, RX>
  ): Effect.Effect<Context.Context<Tool.HandlersFor<Tools>>, EX, RX>

  /**
   * Converts a toolkit into a `Layer` containing handlers for each tool in the
   * toolkit.
   */
  toLayer<Handlers extends HandlersFrom<Tools>, EX = never, RX = never>(
    /**
     * Handler functions or Effect that produces handlers.
     */
    build: Handlers | Effect.Effect<Handlers, EX, RX>
  ): Layer.Layer<Tool.HandlersFor<Tools>, EX, Exclude<RX, Scope.Scope>>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Toolkit.ts#L101)

Since v4.0.0