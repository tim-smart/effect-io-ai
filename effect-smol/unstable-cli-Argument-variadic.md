Package: `effect`<br />
Module: `Argument`<br />

## Argument.variadic

Creates a variadic positional argument that accepts multiple values.

**Example**

```ts
import { Argument } from "effect/unstable/cli"

// Accept any number of files
const anyFiles = Argument.string("files").pipe(Argument.variadic)

// Accept at least 1 file
const atLeastOneFile = Argument.string("files").pipe(
  Argument.variadic({ min: 1 })
)

// Accept between 1 and 5 files
const limitedFiles = Argument.string("files").pipe(
  Argument.variadic({ min: 1, max: 5 })
)
```

**Signature**

```ts
declare const variadic: { (options?: Param.VariadicParamOptions | undefined): <A>(self: Argument<A>) => Argument<ReadonlyArray<A>>; <A>(self: Argument<A>, options?: Param.VariadicParamOptions | undefined): Argument<ReadonlyArray<A>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Argument.ts#L386)

Since v4.0.0