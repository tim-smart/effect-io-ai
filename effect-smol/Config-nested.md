Package: `effect`<br />
Module: `Config`<br />

## Config.nested

Scopes a config under a named prefix.

When to use:
- Grouping related config keys under a common namespace (e.g.
  `"database"`, `"redis"`).
- Building reusable config fragments that callers nest at different paths.

The prefix is prepended to every key the inner config reads. With
`fromUnknown` this means an extra object level; with `fromEnv` it means
a `_`-separated prefix on env var names.

Multiple `nested` calls compose: the outermost name becomes the
outermost path segment.

**Example** (Nesting a struct config under `"database"`)

```ts
import { Config, ConfigProvider, Effect } from "effect"

const dbConfig = Config.all({
  host: Config.string("host"),
  port: Config.number("port")
}).pipe(Config.nested("database"))

const provider = ConfigProvider.fromUnknown({
  database: { host: "localhost", port: "5432" }
})
// Effect.runSync(dbConfig.parse(provider))
// { host: "localhost", port: 5432 }
```

**Example** (Env vars with nested prefix)

```ts
import { Config, ConfigProvider, Effect } from "effect"

const host = Config.string("host").pipe(Config.nested("database"))

const provider = ConfigProvider.fromEnv({
  env: { database_host: "localhost" }
})
// Effect.runSync(host.parse(provider)) // "localhost"
```

**See**

- `all` – combine multiple configs into a struct
- `schema` – read structured config from a schema

**Signature**

```ts
declare const nested: { (name: string): <A>(self: Config<A>) => Config<A>; <A>(self: Config<A>, name: string): Config<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Config.ts#L1293)

Since v4.0.0