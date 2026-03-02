Package: `effect`<br />
Module: `Config`<br />

## Config.option

Makes a config optional: returns `Some(value)` on success and `None` when
data is missing.

When to use:
- A config key may or may not be present and you want to handle both
  cases explicitly.

Like `withDefault`, only missing-data errors produce `None`.
Validation errors still propagate.

**Example** (Optional config)

```ts
import { Config, ConfigProvider, Effect } from "effect"

const maybePort = Config.option(Config.number("port"))

const provider = ConfigProvider.fromUnknown({})
// Effect.runSync(maybePort.parse(provider)) // { _tag: "None" }
```

**See**

- `withDefault` – provide a concrete fallback value instead

**Signature**

```ts
declare const option: <A>(self: Config<A>) => Config<Option.Option<A>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Config.ts#L468)

Since v4.0.0