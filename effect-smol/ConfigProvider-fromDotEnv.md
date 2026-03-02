Package: `effect`<br />
Module: `ConfigProvider`<br />

## ConfigProvider.fromDotEnv

Creates a `ConfigProvider` by reading and parsing a `.env` file from the
file system.

When to use:
- Loading environment config from a `.env` file at application startup.
- Use `fromDotEnvContents` if you already have the file contents as
  a string.

Requires `FileSystem` in the Effect context. Defaults to reading `".env"`
in the current directory; override with `{ path: "/custom/.env" }`.

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
declare const fromDotEnv: (options?: { readonly path?: string | undefined; readonly expandVariables?: boolean | undefined; }) => Effect.Effect<ConfigProvider, PlatformError, FileSystem.FileSystem>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ConfigProvider.ts#L1046)

Since v4.0.0