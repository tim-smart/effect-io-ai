Package: `effect`<br />
Module: `Param`<br />

## Param.optional

Makes a flag or positional argument optional.

**Details**

When the parameter is absent, parsing succeeds with `Option.none()` instead
of failing with a missing option or missing argument error. When present, the
parsed value is wrapped in `Option.some()`.

**Example** (Making parameters optional)

```ts
import { Param } from "effect/unstable/cli"

// Create an optional port option
// - When not provided: returns Option.none()
// - When provided: returns Option.some(parsedValue)
const port = Param.optional(Param.integer(Param.flagKind, "port"))
```

**Signature**

```ts
declare const optional: <Kind extends ParamKind, A>(param: Param<Kind, A>) => Param<Kind, Option.Option<A>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Param.ts#L1249)

Since v4.0.0