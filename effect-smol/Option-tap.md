Package: `effect`<br />
Module: `Option`<br />

## Option.tap

Runs a side-effecting `Option`-returning function on the value of a `Some`,
returning the original `Option` if the function returns `Some`, or `None`
if it returns `None`.

**When to use**

- Validating a value without transforming it
- Adding a side-condition check in a pipeline

**Behavior**

- `None` → `None`
- `Some` → calls `f(value)`; if result is `Some`, returns original `self`; if `None`, returns `None`

**Example** (Validating without transforming)

```ts
import { Option } from "effect"

const getInteger = (n: number) =>
  Number.isInteger(n) ? Option.some(n) : Option.none()

console.log(Option.tap(Option.some(1), getInteger))
// Output: { _id: 'Option', _tag: 'Some', value: 1 }

console.log(Option.tap(Option.some(1.14), getInteger))
// Output: { _id: 'Option', _tag: 'None' }
```

**See**

- `flatMap` when you want to transform the value
- `filter` for predicate-based filtering

**Signature**

```ts
declare const tap: { <A, X>(f: (a: A) => Option<X>): (self: Option<A>) => Option<A>; <A, X>(self: Option<A>, f: (a: A) => Option<X>): Option<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Option.ts#L1648)

Since v2.0.0