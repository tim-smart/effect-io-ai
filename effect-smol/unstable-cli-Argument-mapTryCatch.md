Package: `effect`<br />
Module: `Argument`<br />

## Argument.mapTryCatch

Transforms the parsed value of a positional argument using a function that may throw.

**Example**

```ts
import { Argument } from "effect/unstable/cli"

const json = Argument.string("data").pipe(
  Argument.mapTryCatch(
    (str) => JSON.parse(str),
    (error) =>
      `Invalid JSON: ${error instanceof Error ? error.message : String(error)}`
  )
)
```

**Signature**

```ts
declare const mapTryCatch: { <A, B>(f: (a: A) => B, onError: (error: unknown) => string): (self: Argument<A>) => Argument<B>; <A, B>(self: Argument<A>, f: (a: A) => B, onError: (error: unknown) => string): Argument<B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Argument.ts#L468)

Since v4.0.0