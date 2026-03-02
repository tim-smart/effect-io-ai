Package: `effect`<br />
Module: `Argument`<br />

## Argument.atLeast

Creates a variadic argument that requires at least n values.

**Example**

```ts
import { Argument } from "effect/unstable/cli"

const files = Argument.string("files").pipe(Argument.atLeast(1))
```

**Signature**

```ts
declare const atLeast: { <A>(min: number): (self: Argument<A>) => Argument<ReadonlyArray<A>>; <A>(self: Argument<A>, min: number): Argument<ReadonlyArray<A>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Argument.ts#L495)

Since v4.0.0