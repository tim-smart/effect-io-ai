Package: `effect`<br />
Module: `Config`<br />

## Config.unwrap

Constructs a `Config<T>` from a value matching `Wrap<T>`.

When to use:
- Accepting config from callers who may pass either a single `Config` or a
  record of individual `Config`s.

If the input is already a `Config`, it is returned as-is. Otherwise, each
key is recursively unwrapped and combined.

**Example** (Unwrapping a record of configs)

```ts
import { Config } from "effect"

interface Options {
  key: string
}

const makeConfig = (config: Config.Wrap<Options>): Config.Config<Options> =>
  Config.unwrap(config)
```

**See**

- `Wrap` – the utility type accepted by this function

**Signature**

```ts
declare const unwrap: <T>(wrapped: Wrap<T>) => Config<T>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Config.ts#L529)

Since v4.0.0