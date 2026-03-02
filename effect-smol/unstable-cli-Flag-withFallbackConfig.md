Package: `effect`<br />
Module: `Flag`<br />

## Flag.withFallbackConfig

Adds a fallback config that is loaded when a required flag is missing.

**Example**

```ts
import { Config } from "effect"
import { Flag } from "effect/unstable/cli"

const verbose = Flag.boolean("verbose").pipe(
  Flag.withFallbackConfig(Config.boolean("VERBOSE"))
)
```

**Signature**

```ts
declare const withFallbackConfig: { <B>(config: Config.Config<B>): <A>(self: Flag<A>) => Flag<A | B>; <A, B>(self: Flag<A>, config: Config.Config<B>): Flag<A | B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Flag.ts#L517)

Since v4.0.0