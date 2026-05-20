Package: `effect`<br />
Module: `Param`<br />

## Param.withHidden

Hides a parameter from generated help output and completions while keeping
it parseable on the command line.

Useful for experimental, internal, or deprecated flags that should be
accepted but not advertised.

**Example** (Hiding a flag from help)

```ts
import { Param } from "effect/unstable/cli"

// @internal - this module is not exported publicly

const experimental = Param.boolean(Param.flagKind, "experimental-foo").pipe(
  Param.withHidden
)
```

**Signature**

```ts
declare const withHidden: <Kind extends ParamKind, A>(self: Param<Kind, A>) => Param<Kind, A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Param.ts#L1029)

Since v4.0.0