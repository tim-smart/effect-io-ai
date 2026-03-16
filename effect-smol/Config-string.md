Package: `effect`<br />
Module: `Config`<br />

## Config.string

Creates a config for a single string value.

Shortcut for `Config.schema(Schema.String, name)`.

When to use:
- Reading a single string env var or config key.

**Example** (Reading a string config)

```ts
import { Config, ConfigProvider, Effect } from "effect"

const host = Config.string("HOST")

const provider = ConfigProvider.fromUnknown({ HOST: "localhost" })
// Effect.runSync(host.parse(provider)) // "localhost"
```

**See**

- `nonEmptyString` – rejects empty strings
- `schema` – for more complex types

**Signature**

```ts
declare const string: (name?: string) => Config<string>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Config.ts#L902)

Since v4.0.0