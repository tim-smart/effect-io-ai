Package: `effect`<br />
Module: `Argument`<br />

## Argument.map

Transforms the parsed value of a positional argument.

**Example**

```ts
import { Argument } from "effect/unstable/cli"

const port = Argument.integer("port").pipe(
  Argument.map((p) => ({ port: p, url: `http://localhost:${p}` }))
)
```

**Signature**

```ts
declare const map: { <A, B>(f: (a: A) => B): (self: Argument<A>) => Argument<B>; <A, B>(self: Argument<A>, f: (a: A) => B): Argument<B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Argument.ts#L409)

Since v4.0.0