Package: `effect`<br />
Module: `Argument`<br />

## Argument.filterMap

Filters and transforms parsed values, failing with a custom error message
if the filter function returns None.

**Example**

```ts
import { Option } from "effect"
import { Argument } from "effect/unstable/cli"

const positiveInt = Argument.integer("count").pipe(
  Argument.filterMap(
    (n) => n > 0 ? Option.some(n) : Option.none(),
    (n) => `Expected positive integer, got ${n}`
  )
)
```

**Signature**

```ts
declare const filterMap: { <A, B>(f: (a: A) => Option.Option<B>, onNone: (a: A) => string): (self: Argument<A>) => Argument<B>; <A, B>(self: Argument<A>, f: (a: A) => Option.Option<B>, onNone: (a: A) => string): Argument<B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Argument.ts#L654)

Since v4.0.0