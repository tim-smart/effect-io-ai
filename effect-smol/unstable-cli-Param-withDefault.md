Package: `effect`<br />
Module: `Param`<br />

## Param.withDefault

Makes a flag or positional argument optional by supplying a fallback value.

**Details**

The fallback may be a pure value or an effect. It is used only when the
parameter is absent; provided values are parsed normally.

**Example** (Providing default values)

```ts
import { Param } from "effect/unstable/cli"

// Using the pipe operator to make an option optional
const port = Param.integer(Param.flagKind, "port").pipe(
  Param.withDefault(8080)
)

// Can also be used with other combinators
const verbose = Param.boolean(Param.flagKind, "verbose").pipe(
  Param.withAlias("-v"),
  Param.withDescription("Enable verbose output"),
  Param.withDefault(false)
)
```

**Signature**

```ts
declare const withDefault: { <const B>(defaultValue: B | Effect.Effect<B, CliError.CliError, Environment>): <Kind extends ParamKind, A>(self: Param<Kind, A>) => Param<Kind, A | B>; <Kind extends ParamKind, A, const B>(self: Param<Kind, A>, defaultValue: B | Effect.Effect<B, CliError.CliError, Environment>): Param<Kind, A | B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Param.ts#L1252)

Since v4.0.0