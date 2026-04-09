Package: `effect`<br />
Module: `Argument`<br />

## Argument.between

Creates a variadic argument that accepts between min and max values.

**Example**

```ts
import { Argument } from "effect/unstable/cli"

const files = Argument.string("files").pipe(Argument.between(1, 5))
```

**Signature**

```ts
declare const between: { <A>(min: number, max: number): (self: Argument<A>) => Argument<ReadonlyArray<A>>; <A>(self: Argument<A>, min: number, max: number): Argument<ReadonlyArray<A>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Argument.ts#L528)

Since v4.0.0