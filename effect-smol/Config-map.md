Package: `effect`<br />
Module: `Config`<br />

## Config.map

Transforms the parsed value of a config with a pure function.

When to use:
- Post-processing a config value (e.g. trimming, uppercasing, wrapping).
- The transformation cannot fail. Use `mapOrFail` if it can.

Supports both data-last and data-first calling conventions.

**Example** (Uppercasing a string config)

```ts
import { Config, ConfigProvider, Effect } from "effect"

const upper = Config.string("name").pipe(
  Config.map((s) => s.toUpperCase())
)

const provider = ConfigProvider.fromUnknown({ name: "alice" })
// Effect.runSync(upper.parse(provider)) // "ALICE"
```

**See**

- `mapOrFail` – when the transformation can fail

**Signature**

```ts
declare const map: { <A, B>(f: (a: A) => B): (self: Config<A>) => Config<B>; <A, B>(self: Config<A>, f: (a: A) => B): Config<B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Config.ts#L251)

Since v4.0.0