Package: `effect`<br />
Module: `Config`<br />

## Config.succeed

Creates a config that always succeeds with the given value, ignoring the
provider entirely.

When to use:
- Providing a hardcoded constant inside `orElse`.
- Testing.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Config.ts#L873)

Since v4.0.0