Package: `effect`<br />
Module: `Param`<br />

## Param.withDefault

Makes an option optional by providing a default value.

This combinator is useful when you want to make an existing option optional
by providing a fallback value that will be used when the option is not
provided on the command line.

**Example**

```ts
import * as Param from "effect/unstable/cli/Param"

// @internal - this module is not exported publicly

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Param.ts#L1139)

Since v4.0.0