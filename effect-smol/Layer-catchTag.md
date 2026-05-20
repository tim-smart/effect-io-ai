Package: `effect`<br />
Module: `Layer`<br />

## Layer.catchTag

Recovers from specific tagged errors.

**When to use**

Use `catchTag` when only some tagged construction errors should be recovered.
Use `catchCause` when recovery depends on defects, interruption, or other
cause information.

**Example** (Recovering from tagged layer errors)

```ts
import { Context, Data, Effect, Layer } from "effect"

class ConfigError extends Data.TaggedError("ConfigError") {}

class Config extends Context.Service<Config, {
  readonly apiUrl: string
}>()("Config") {}

const configLayer = Layer.effect(Config, Effect.fail(new ConfigError()))

const fallbackLayer = Layer.succeed(Config, { apiUrl: "http://localhost" })

const recovered = configLayer.pipe(
  Layer.catchTag("ConfigError", () => fallbackLayer)
)
```

**See**

- `catchCause` for recovering with access to the full cause

**Signature**

```ts
declare const catchTag: { <const K extends Types.Tags<E> | NonEmptyReadonlyArray<Types.Tags<E>>, E, RIn2, E2, ROut2>(k: K, f: (e: Types.ExtractTag<Types.NoInfer<E>, K extends NonEmptyReadonlyArray<string> ? K[number] : K>) => Layer<ROut2, E2, RIn2>): <RIn, ROut>(self: Layer<ROut, E, RIn>) => Layer<ROut & ROut2, E2 | Types.ExcludeTag<E, K extends NonEmptyReadonlyArray<string> ? K[number] : K>, RIn2 | RIn>; <RIn, E, ROut, const K extends Types.Tags<E> | NonEmptyReadonlyArray<Types.Tags<E>>, RIn2, E2, ROut2>(self: Layer<ROut, E, RIn>, k: K, f: (e: Types.ExtractTag<E, K extends NonEmptyReadonlyArray<string> ? K[number] : K>) => Layer<ROut2, E2, RIn2>): Layer<ROut & ROut2, E2 | Types.ExcludeTag<E, K extends NonEmptyReadonlyArray<string> ? K[number] : K>, RIn | RIn2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Layer.ts#L1785)

Since v4.0.0