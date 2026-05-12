Package: `effect`<br />
Module: `Option`<br />

## Option.composeK

Composes two `Option`-returning functions into a single function that chains
them together.

**When to use**

- Building pipelines of partial functions (Kleisli composition)

**Behavior**

- Calls `afb(a)`, then if `Some`, calls `bfc` with its value
- Short-circuits to `None` if either function returns `None`

**Example** (Composing parsers)

```ts
import { Option } from "effect"

const parse = (s: string): Option.Option<number> =>
  isNaN(Number(s)) ? Option.none() : Option.some(Number(s))

const double = (n: number): Option.Option<number> =>
  n > 0 ? Option.some(n * 2) : Option.none()

const parseAndDouble = Option.composeK(parse, double)

console.log(parseAndDouble("42"))
// Output: { _id: 'Option', _tag: 'Some', value: 84 }

console.log(parseAndDouble("not a number"))
// Output: { _id: 'Option', _tag: 'None' }
```

**See**

- `flatMap` for single-step chaining

**Signature**

```ts
declare const composeK: { <B, C>(bfc: (b: B) => Option<C>): <A>(afb: (a: A) => Option<B>) => (a: A) => Option<C>; <A, B, C>(afb: (a: A) => Option<B>, bfc: (b: B) => Option<C>): (a: A) => Option<C>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Option.ts#L1607)

Since v2.0.0