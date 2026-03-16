Package: `effect`<br />
Module: `Option`<br />

## Option.lift2

Lifts a binary function to operate on two `Option` values.

**When to use**

- Reusing an existing binary function in an `Option` context

**Behavior**

- Both `Some` → applies `f` and wraps in `Some`
- Either `None` → `None`

**Example** (Lifting addition)

```ts
import { Option } from "effect"

const addOptions = Option.lift2((a: number, b: number) => a + b)

console.log(addOptions(Option.some(2), Option.some(3)))
// Output: { _id: 'Option', _tag: 'Some', value: 5 }

console.log(addOptions(Option.some(2), Option.none()))
// Output: { _id: 'Option', _tag: 'None' }
```

**See**

- `zipWith` for a non-lifted variant

**Signature**

```ts
declare const lift2: <A, B, C>(f: (a: A, b: B) => C) => { (that: Option<B>): (self: Option<A>) => Option<C>; (self: Option<A>, that: Option<B>): Option<C>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Option.ts#L2168)

Since v2.0.0