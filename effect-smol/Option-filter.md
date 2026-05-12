Package: `effect`<br />
Module: `Option`<br />

## Option.filter

Filters an `Option` using a predicate. Returns `None` if the predicate is
not satisfied or the input is `None`.

**When to use**

- Discarding values that don't meet a condition
- Narrowing the type via a refinement predicate

**Behavior**

- `None` → `None`
- `Some` where `predicate(value)` is `true` → `Some(value)`
- `Some` where `predicate(value)` is `false` → `None`
- Supports refinements for type narrowing

**Example** (Filtering with a predicate)

```ts
import { Option } from "effect"

const removeEmpty = (input: Option.Option<string>) =>
  Option.filter(input, (value) => value !== "")

console.log(removeEmpty(Option.some("hello")))
// Output: { _id: 'Option', _tag: 'Some', value: 'hello' }

console.log(removeEmpty(Option.some("")))
// Output: { _id: 'Option', _tag: 'None' }

console.log(removeEmpty(Option.none()))
// Output: { _id: 'Option', _tag: 'None' }
```

**See**

- `filterMap` to transform and filter simultaneously
- `exists` to test without filtering

**Signature**

```ts
declare const filter: { <A, B extends A>(refinement: Refinement<A, B>): (self: Option<A>) => Option<B>; <A>(predicate: Predicate<A>): <B extends A>(self: Option<B>) => Option<B>; <A, B extends A>(self: Option<A>, refinement: Refinement<A, B>): Option<B>; <A>(self: Option<A>, predicate: Predicate<A>): Option<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Option.ts#L2060)

Since v2.0.0