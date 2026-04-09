Package: `effect`<br />
Module: `Param`<br />

## Param.orElse

Provides a fallback param to use if this param fails to parse.

**Example**

```ts
import * as Param from "effect/unstable/cli/Param"

// @internal - this module is not exported publicly

const config = Param.file(Param.flagKind, "config").pipe(
  Param.orElse(() => Param.string(Param.flagKind, "config-url"))
)
```

**Signature**

```ts
declare const orElse: { <B, Kind extends ParamKind>(orElse: (error: CliError.CliError) => Param<Kind, B>): <A>(self: Param<Kind, A>) => Param<Kind, A | B>; <Kind extends ParamKind, A, B>(self: Param<Kind, A>, orElse: (error: CliError.CliError) => Param<Kind, B>): Param<Kind, A | B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Param.ts#L1628)

Since v4.0.0