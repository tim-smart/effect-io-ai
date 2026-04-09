Package: `effect`<br />
Module: `Argument`<br />

## Argument.orElse

Provides a fallback argument to use if this argument fails to parse.

**Example**

```ts
import { Argument } from "effect/unstable/cli"

const value = Argument.integer("value").pipe(
  Argument.orElse(() => Argument.string("value"))
)
```

**Signature**

```ts
declare const orElse: { <B>(that: LazyArg<Argument<B>>): <A>(self: Argument<A>) => Argument<A | B>; <A, B>(self: Argument<A>, that: LazyArg<Argument<B>>): Argument<A | B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Argument.ts#L675)

Since v4.0.0