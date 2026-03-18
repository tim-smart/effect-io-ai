Package: `effect`<br />
Module: `Config`<br />

## Config.date

Creates a config for a `Date` value parsed from a string.

Fails with a `SchemaError` if the string produces an invalid `Date`.

Shortcut for `Config.schema(Schema.DateValid, name)`.

**Example** (Reading a date)

```ts
import { Config, ConfigProvider, Effect } from "effect"

const createdAt = Config.date("CREATED_AT")

const provider = ConfigProvider.fromUnknown({ CREATED_AT: "2024-01-15" })
// Effect.runSync(createdAt.parse(provider))
// Date("2024-01-15T00:00:00.000Z")
```

**Signature**

```ts
declare const date: (name?: string) => Config<Date>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Config.ts#L1243)

Since v4.0.0