Package: `effect`<br />
Module: `Config`<br />

## Config.succeed

Creates a config that always succeeds with the given value, ignoring the
provider entirely.

**When to use**

Use when you need a hardcoded config value, such as inside `orElse` or
tests.

**Example** (Constant fallback)

```ts
import { Config } from "effect"

const host = Config.string("HOST").pipe(
  Config.orElse(() => Config.succeed("localhost"))
)
```

**Signature**

```ts
declare const succeed: <T>(value: T) => Config<T>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Config.ts#L919)

Since v2.0.0