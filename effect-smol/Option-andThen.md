Package: `effect`<br />
Module: `Option`<br />

## Option.andThen

Chains a second computation onto an `Option`. The second value can be a
plain value, an `Option`, or a function returning either.

**When to use**

- Flexible chaining where the next step may return `Option`, a plain value,
  or a function

**Behavior**

- If `self` is `None`, returns `None` immediately
- If `f` is a function, calls it with the `Some` value
- If `f` returns an `Option`, returns it as-is; if a plain value, wraps in `Some`
- If `f` is not a function, uses it directly (same wrapping rules)

**Example** (Chaining with andThen)

```ts
import { Option } from "effect"

// Chain with a function returning Option
console.log(Option.andThen(Option.some(5), (x) => Option.some(x * 2)))
// Output: { _id: 'Option', _tag: 'Some', value: 10 }

// Chain with a static value
console.log(Option.andThen(Option.some(5), "hello"))
// Output: { _id: 'Option', _tag: 'Some', value: "hello" }

// Chain with None - skips
console.log(Option.andThen(Option.none(), (x) => Option.some(x * 2)))
// Output: { _id: 'Option', _tag: 'None' }
```

**See**

- `flatMap` for the standard monadic bind
- `map` when you always return a plain value

**Signature**

```ts
declare const andThen: { <A, B>(f: (a: A) => Option<B>): (self: Option<A>) => Option<B>; <B>(f: Option<B>): <A>(self: Option<A>) => Option<B>; <A, B>(f: (a: A) => B): (self: Option<A>) => Option<B>; <B>(f: NotFunction<B>): <A>(self: Option<A>) => Option<B>; <A, B>(self: Option<A>, f: (a: A) => Option<B>): Option<B>; <A, B>(self: Option<A>, f: Option<B>): Option<B>; <A, B>(self: Option<A>, f: (a: A) => B): Option<B>; <A, B>(self: Option<A>, f: NotFunction<B>): Option<B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Option.ts#L1399)

Since v2.0.0