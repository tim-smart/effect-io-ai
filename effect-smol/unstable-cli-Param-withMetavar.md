Package: `effect`<br />
Module: `Param`<br />

## Param.withMetavar

Sets a custom metavar (placeholder name) for the param in help documentation.

The metavar is displayed in usage text to indicate what value the user should provide.
For example, `--output FILE` shows `FILE` as the metavar.

**Example**

```ts
import * as Param from "effect/unstable/cli/Param"

// @internal - this module is not exported publicly

const port = Param.integer(Param.flagKind, "port").pipe(
  Param.withMetavar("PORT"),
  Param.filter(
    (p) => p >= 1 && p <= 65535,
    () => "Port must be between 1 and 65535"
  )
)
```

**Signature**

```ts
declare const withMetavar: { <K extends ParamKind>(metavar: string): <A>(self: Param<K, A>) => Param<K, A>; <K extends ParamKind, A>(self: Param<K, A>, metavar: string): Param<K, A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Param.ts#L1555)

Since v4.0.0