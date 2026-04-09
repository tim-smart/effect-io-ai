Package: `effect`<br />
Module: `SchemaTransformation`<br />

## SchemaTransformation.Middleware

A middleware that wraps the entire parsing `Effect` pipeline for both
decode and encode directions.

Unlike `Transformation`, which operates on individual values via `Getter`,
`Middleware` receives the full `Effect` produced by the inner schema and can
intercept, modify, retry, or replace it.

When to use this:
- You need to catch or recover from parsing errors (e.g. `Schema.catchDecoding`).
- You need to run side effects around the parsing pipeline.
- You need access to the full `Effect` rather than a single decoded value.

Behavior:
- Immutable — constructing a Middleware does not mutate existing instances.
- `decode` receives an `Effect<Option<E>, Issue, RDE>` and returns
  `Effect<Option<T>, Issue, RDT>`.
- `encode` receives an `Effect<Option<T>, Issue, RET>` and returns
  `Effect<Option<E>, Issue, REE>`.
- `flip()` swaps the decode and encode functions, producing a
  `Middleware<E, T, ...>`.

Typically constructed indirectly via `Schema.middlewareDecoding` or
`Schema.middlewareEncoding` rather than instantiating this class directly.

**Example** (Creating a middleware that falls back on decode failure)

```ts
import { Effect, Option, SchemaTransformation } from "effect"

const fallback = new SchemaTransformation.Middleware(
  (effect) => Effect.catch(effect, () => Effect.succeed(Option.some("fallback"))),
  (effect) => effect
)
```

See also:
- `Transformation` — value-level bidirectional transformation

**Signature**

```ts
declare class Middleware<T, E, RDE, RDT, RET, REE> { constructor(
    decode: (
      effect: Effect.Effect<Option.Option<E>, Issue.Issue, RDE>,
      options: AST.ParseOptions
    ) => Effect.Effect<Option.Option<T>, Issue.Issue, RDT>,
    encode: (
      effect: Effect.Effect<Option.Option<T>, Issue.Issue, RET>,
      options: AST.ParseOptions
    ) => Effect.Effect<Option.Option<E>, Issue.Issue, REE>
  ) }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaTransformation.ts#L141)

Since v4.0.0