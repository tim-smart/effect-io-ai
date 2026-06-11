Package: `effect`<br />
Module: `Option`<br />

## Option.map

Transforms the value inside a `Some` using the provided function, leaving
`None` unchanged.

**When to use**

Use to apply a pure transformation to an `Option`'s present value, especially
when chaining transformations in a pipeline.

**Details**

- `Some` → applies `f` and wraps the result in a new `Some`
- `None` → returns `None` unchanged

**Example** (Mapping over an Option)

```ts
import { Option } from "effect"

console.log(Option.map(Option.some(2), (n) => n * 2))
// Output: { _id: 'Option', _tag: 'Some', value: 4 }

console.log(Option.map(Option.none(), (n: number) => n * 2))
// Output: { _id: 'Option', _tag: 'None' }
```

**See**

- `flatMap` when `f` returns an `Option`
- `as` to replace the value with a constant

**Signature**

```ts
declare const map: { <A, B>(f: (a: A) => B): (self: Option<A>) => Option<B>; <A, B>(self: Option<A>, f: (a: A) => B): Option<B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Option.ts#L1159)

Since v2.0.0