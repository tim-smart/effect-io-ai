Package: `effect`<br />
Module: `Argument`<br />

## Argument.filter

Filters parsed values, failing with a custom error message if the predicate returns false.

**Example**

```ts
import { Argument } from "effect/unstable/cli"

const positiveInt = Argument.integer("count").pipe(
  Argument.filter(
    (n) => n > 0,
    (n) => `Expected positive integer, got ${n}`
  )
)
```

**Signature**

```ts
declare const filter: { <A>(predicate: (a: A) => boolean, onFalse: (a: A) => string): (self: Argument<A>) => Argument<A>; <A>(self: Argument<A>, predicate: (a: A) => boolean, onFalse: (a: A) => string): Argument<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Argument.ts#L623)

Since v4.0.0