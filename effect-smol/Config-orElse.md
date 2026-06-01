Package: `effect`<br />
Module: `Config`<br />

## Config.orElse

Provides a fallback config when parsing fails with a `ConfigError`.

**When to use**

Use when you need to try an alternative config source after the primary one
fails.

**Details**

Unlike `withDefault`, this catches **all** `ConfigError`s (not just
missing data). The fallback function receives the error and returns a new
`Config`.

Supports both data-last and data-first calling conventions.

**Example** (Falling back to a literal)

```ts
import { Config } from "effect"

const hostConfig = Config.string("HOST").pipe(
  Config.orElse(() => Config.succeed("localhost"))
)
```

**See**

- `withDefault` – fallback only on missing data

**Signature**

```ts
declare const orElse: { <A2>(that: (error: ConfigError) => Config<A2>): <A>(self: Config<A>) => Config<A2 | A>; <A, A2>(self: Config<A>, that: (error: ConfigError) => Config<A2>): Config<A | A2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Config.ts#L336)

Since v2.0.0