Package: `effect`<br />
Module: `Argument`<br />

## Argument.atMost

Creates a variadic argument that accepts at most n values.

**Example**

```ts
import { Argument } from "effect/unstable/cli"

const files = Argument.string("files").pipe(Argument.atMost(5))
```

**Signature**

```ts
declare const atMost: { <A>(max: number): (self: Argument<A>) => Argument<ReadonlyArray<A>>; <A>(self: Argument<A>, max: number): Argument<ReadonlyArray<A>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Argument.ts#L511)

Since v4.0.0