Package: `effect`<br />
Module: `Argument`<br />

## Argument.withFallbackConfig

Adds a fallback config that is loaded when a required argument is missing.

**Example**

```ts
import { Config } from "effect"
import { Argument } from "effect/unstable/cli"

const repository = Argument.string("repository").pipe(
  Argument.withFallbackConfig(Config.string("REPOSITORY"))
)
```

**Signature**

```ts
declare const withFallbackConfig: { <B>(config: Config.Config<B>): <A>(self: Argument<A>) => Argument<A | B>; <A, B>(self: Argument<A>, config: Config.Config<B>): Argument<A | B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Argument.ts#L337)

Since v4.0.0