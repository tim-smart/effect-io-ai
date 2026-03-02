Package: `effect`<br />
Module: `Param`<br />

## Param.atMost

Wraps an option to allow it to be specified at most `max` times.

This combinator transforms an option to accept between 0 and `max`
occurrences on the command line, returning an array of all provided values.

**Example**

```ts
import * as Param from "effect/unstable/cli/Param"

// @internal - this module is not exported publicly

// Allow at most 3 warning suppressions
const suppressions = Param.string(Param.flagKind, "suppress").pipe(
  Param.atMost(3)
)

// Parse: --suppress warning1 --suppress warning2
// Result: ["warning1", "warning2"]
```

**Signature**

```ts
declare const atMost: { <A>(max: number): <Kind extends ParamKind>(self: Param<Kind, A>) => Param<Kind, ReadonlyArray<A>>; <Kind extends ParamKind, A>(self: Param<Kind, A>, max: number): Param<Kind, ReadonlyArray<A>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Param.ts#L1372)

Since v4.0.0