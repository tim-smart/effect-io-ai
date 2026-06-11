Package: `effect`<br />
Module: `Statement`<br />

## Statement.Transformer

Hook that can rewrite or wrap a `Statement` before execution, using the
current SQL constructor, fiber, and tracing span.

**Signature**

```ts
type Transformer = (
  self: Statement<unknown>,
  sql: Constructor,
  fiber: Fiber.Fiber<unknown, unknown>,
  span: Tracer.Span
) => Effect.Effect<Statement<unknown>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Statement.ts#L89)

Since v4.0.0