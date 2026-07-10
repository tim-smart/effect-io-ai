Package: `effect`<br />
Module: `ConfigProvider`<br />

## ConfigProvider.fromDotEnv

Creates a `ConfigProvider` by reading and parsing a `.env` file from the
file system.

**When to use**

Use to load environment config from a `.env` file at application startup.

**Details**

Requires `FileSystem` in the Effect context. Defaults to reading `".env"` in
the current directory; override with `{ path: "/custom/.env" }`.
Variable expansion (for example, `${VAR}`) is disabled by default; enable
with `{ expandVariables: true }`.

Literal empty strings are treated as missing values when loaded as values by
default. Pass `{ preserveEmptyStrings: true }` to keep empty strings as
explicit values. Child discovery still reflects the keys present in the
parsed `.env` source.

Returns an `Effect` that resolves to a `ConfigProvider`. Fails with a
`PlatformError` if the file cannot be read.

**Example** (Loading a .env file)

```ts
import { ConfigProvider, Effect } from "effect"

const program = Effect.gen(function*() {
  const provider = yield* ConfigProvider.fromDotEnv()
  return provider
})
```

**See**

- `fromDotEnvContents` – parse a `.env` string directly
- `fromEnv` – read from the runtime environment

**Signature**

```ts
declare const fromDotEnv: (options?: { readonly path?: string | undefined; readonly expandVariables?: boolean | undefined; readonly preserveEmptyStrings?: boolean | undefined; }) => Effect.Effect<ConfigProvider, PlatformError, FileSystem.FileSystem>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ConfigProvider.ts#L1110)

Since v4.0.0