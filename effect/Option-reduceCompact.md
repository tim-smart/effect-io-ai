Package: `effect`<br />
Module: `Option`<br />

## Option.reduceCompact

Reduces an `Iterable` of `Option<A>` to a single value of type `B`, ignoring
elements that are `None`.

**Details**

This function takes an initial value of type `B` and a reducing function `f`
that combines the accumulator with values of type `A`. It processes an
iterable of `Option<A>`, applying `f` only to the `Some` values while
ignoring the `None` values. The result is a single value of type `B`.

This utility is particularly useful for aggregating values from an iterable
of `Option`s while skipping the absent (`None`) values.

**Example**

```ts
import { Option, pipe } from "effect"

const iterable = [Option.some(1), Option.none(), Option.some(2), Option.none()]

console.log(pipe(iterable, Option.reduceCompact(0, (b, a) => b + a)))
// Output: 3
```

**Signature**

```ts
declare const reduceCompact: { <B, A>(b: B, f: (b: B, a: A) => B): (self: Iterable<Option<A>>) => B; <A, B>(self: Iterable<Option<A>>, b: B, f: (b: B, a: A) => B): B; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Option.ts#L1510)

Since v2.0.0