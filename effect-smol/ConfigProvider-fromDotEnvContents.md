Package: `effect`<br />
Module: `ConfigProvider`<br />

## ConfigProvider.fromDotEnvContents

Creates a `ConfigProvider` by parsing the string contents of a `.env` file.

When to use:
- You already have the `.env` contents as a string (e.g. fetched from a
  remote store or embedded in a test).
- Use `fromDotEnv` instead if you want to read a `.env` file from
  disk.

Supports `export` prefixes, single/double/backtick quoting, inline
comments, and escaped newlines. Variable expansion (e.g. `${VAR}`) is
disabled by default; enable with `{ expandVariables: true }`.

Parsing is based on the `dotenv` / `dotenv-expand` algorithm.

Internally delegates to `fromEnv` with the parsed key-value pairs.

**Example** (Parsing .env contents)

```ts
import { ConfigProvider } from "effect"

const contents = `
HOST=localhost
PORT=3000
# this is a comment
`

const provider = ConfigProvider.fromDotEnvContents(contents)
```

**See**

- `fromDotEnv` – loads a `.env` file from disk
- `fromEnv` – for raw environment variable access

**Signature**

```ts
declare const fromDotEnvContents: (lines: string, options?: { readonly expandVariables?: boolean | undefined; }) => ConfigProvider
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ConfigProvider.ts#L913)

Since v4.0.0