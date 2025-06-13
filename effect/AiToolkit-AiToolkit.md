Package: `@effect/ai`<br />
Module: `AiToolkit`<br />

## AiToolkit.AiToolkit

An `AiToolkit` represents a set of tools that a large language model can
use to augment its response.

**Signature**

```ts
export interface AiToolkit<in out Tools extends AiTool.Any>
  extends Effect.Effect<ToHandler<Tools>, never, AiTool.ToHandler<Tools>>, Inspectable, Pipeable
{
  new(_: never): {}

  readonly [TypeId]: TypeId

  /**
   * A map containing the tools that are part of this toolkit.
   */
  readonly tools: AiTool.ByName<Tools>

  /**
   * Converts this toolkit into a `Context` object containing the handlers for
   * all tools in the toolkit.
   */
  toContext<Handlers extends HandlersFrom<Tools>, EX = never, RX = never>(
    build: Handlers | Effect.Effect<Handlers, EX, RX>
  ): Effect.Effect<Context.Context<AiTool.ToHandler<Tools>>, EX, RX>

  /**
   * Converts this toolkit into a `Layer` containing the handlers for all tools
   * in the toolkit.
   */
  toLayer<Handlers extends HandlersFrom<Tools>, EX = never, RX = never>(
    build: Handlers | Effect.Effect<Handlers, EX, RX>
  ): Layer.Layer<AiTool.ToHandler<Tools>, EX, Exclude<RX, Scope.Scope>>

  of<Handlers extends HandlersFrom<Tools>>(handlers: Handlers): Handlers
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/AiToolkit.ts#L39)

Since v1.0.0