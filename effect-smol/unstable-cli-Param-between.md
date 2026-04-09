Package: `effect`<br />
Module: `Param`<br />

## Param.between

Wraps an option to allow it to be specified multiple times within a range.

This combinator transforms an option to accept between `min` and `max`
occurrences on the command line, returning an array of all provided values.

**Example**

```ts
import * as Param from "effect/unstable/cli/Param"

// @internal - this module is not exported publicly

// Allow 1-3 file inputs
const files = Param.string(Param.flagKind, "file").pipe(
  Param.between(1, 3),
  Param.withAlias("-f")
)

// Parse: --file a.txt --file b.txt
// Result: ["a.txt", "b.txt"]

// Allow 0 or more tags
const tags = Param.string(Param.flagKind, "tag").pipe(
  Param.between(0, Number.MAX_SAFE_INTEGER)
)

// Parse: --tag dev --tag staging --tag v1.0
// Result: ["dev", "staging", "v1.0"]
```

**Signature**

```ts
declare const between: { <A>(min: number, max: number): <Kind extends ParamKind>(self: Param<Kind, A>) => Param<Kind, ReadonlyArray<A>>; <Kind extends ParamKind, A>(self: Param<Kind, A>, min: number, max: number): Param<Kind, ReadonlyArray<A>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Param.ts#L1357)

Since v4.0.0