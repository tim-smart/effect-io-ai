Package: `effect`<br />
Module: `Param`<br />

## Param.atLeast

Wraps an option to require it to be specified at least `min` times.

This combinator transforms an option to accept at least `min`
occurrences on the command line, returning an array of all provided values.

**Example**

```ts
import * as Param from "effect/unstable/cli/Param"

// @internal - this module is not exported publicly

// Require at least 2 input files
const inputs = Param.string(Param.flagKind, "input").pipe(
  Param.atLeast(2),
  Param.withAlias("-i")
)

// Parse: --input file1.txt --input file2.txt --input file3.txt
// Result: ["file1.txt", "file2.txt", "file3.txt"]
```

**Signature**

```ts
declare const atLeast: { <A>(min: number): <Kind extends ParamKind>(self: Param<Kind, A>) => Param<Kind, ReadonlyArray<A>>; <Kind extends ParamKind, A>(self: Param<Kind, A>, min: number): Param<Kind, ReadonlyArray<A>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Param.ts#L1430)

Since v4.0.0