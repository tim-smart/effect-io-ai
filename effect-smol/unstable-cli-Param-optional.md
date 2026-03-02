Package: `effect`<br />
Module: `Param`<br />

## Param.optional

Creates an optional option that returns None when not provided.

Optional options never fail with MissingOption errors. If the option is not
provided on the command line, Option.none() is returned instead.

**Example**

```ts
import * as Param from "effect/unstable/cli/Param"

// @internal - this module is not exported publicly

// Create an optional port option
// - When not provided: returns Option.none()
// - When provided: returns Option.some(parsedValue)
const port = Param.optional(Param.integer(Param.flagKind, "port"))
```

**Signature**

```ts
declare const optional: <Kind extends ParamKind, A>(param: Param<Kind, A>) => Param<Kind, Option.Option<A>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Param.ts#L1090)

Since v4.0.0