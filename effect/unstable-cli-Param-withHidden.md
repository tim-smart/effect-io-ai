Package: `effect`<br />
Module: `Param`<br />

## Param.withHidden

Hides a parameter from generated help output and completions while keeping
it parseable on the command line.

**When to use**

Use when experimental, internal, or deprecated flags should be accepted but
not advertised.

**Example** (Hiding a flag from help)

```ts
import { Param } from "effect/unstable/cli"

const experimental = Param.boolean(Param.flagKind, "experimental-foo").pipe(
  Param.withHidden
)
```

**Signature**

```ts
declare const withHidden: <Kind extends ParamKind, A>(self: Param<Kind, A>) => Param<Kind, A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Param.ts#L1004)

Since v4.0.0