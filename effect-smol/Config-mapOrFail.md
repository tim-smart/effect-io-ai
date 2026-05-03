Package: `effect`<br />
Module: `Config`<br />

## Config.mapOrFail

Transforms the parsed value with a function that may fail.

When to use:
- Validating or converting a config value where the transformation can
  produce a `ConfigError` (e.g. parsing a URL, checking a range).

Supports both data-last and data-first calling conventions.

**Example** (Wrapping a value in an effectful transformation)

```ts
import { Config, Effect } from "effect"

const trimmed = Config.string("name").pipe(
  Config.mapOrFail((s) => Effect.succeed(s.trim()))
)
```

**See**

- `map` – when the transformation cannot fail

**Signature**

```ts
declare const mapOrFail: { <A, B>(f: (a: A) => Effect.Effect<B, ConfigError>): (self: Config<A>) => Config<B>; <A, B>(self: Config<A>, f: (a: A) => Effect.Effect<B, ConfigError>): Config<B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Config.ts#L280)

Since v4.0.0