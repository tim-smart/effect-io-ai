Package: `effect`<br />
Module: `Argument`<br />

## Argument.withDescription

Adds a description to a positional argument.

**Example**

```ts
import { Argument } from "effect/unstable/cli"

const filename = Argument.string("filename").pipe(
  Argument.withDescription("The input file to process")
)
```

**Signature**

```ts
declare const withDescription: { <A>(description: string): (self: Argument<A>) => Argument<A>; <A>(self: Argument<A>, description: string): Argument<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Argument.ts#L291)

Since v4.0.0