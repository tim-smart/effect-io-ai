Package: `effect`<br />
Module: `Config`<br />

## Config.withDefault

Provides a fallback value when the config fails due to missing data.

When to use:
- Making a config key optional with a sensible default.

Only applies when the error is a `SchemaError` caused exclusively by
missing data (missing keys, undefined values). Validation errors (wrong
type, out of range) still propagate. The default is lazily evaluated.

Supports both data-last and data-first calling conventions.

**Example** (Defaulting a missing port)

```ts
import { Config, ConfigProvider, Effect } from "effect"

const port = Config.number("port").pipe(Config.withDefault(3000))

const provider = ConfigProvider.fromUnknown({})
// Effect.runSync(port.parse(provider)) // 3000
```

**See**

- `option` – returns `Option` instead of a default value
- `orElse` – catches all errors, not just missing data

**Signature**

```ts
declare const withDefault: { <const A2>(defaultValue: A2): <A>(self: Config<A>) => Config<A2 | A>; <A, const A2>(self: Config<A>, defaultValue: A2): Config<A | A2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Config.ts#L425)

Since v4.0.0