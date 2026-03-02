Package: `effect`<br />
Module: `Option`<br />

## Option.zipLeft

Sequences two `Option`s, keeping the value from the first if both are `Some`.

**When to use**

- Running a validation that must succeed, but keeping the original value

**Behavior**

- Both `Some` → returns `self`
- Either `None` → returns `None`

**Example** (Keeping the first value)

```ts
import { Option } from "effect"

console.log(Option.zipLeft(Option.some("hello"), Option.some(1)))
// Output: { _id: 'Option', _tag: 'Some', value: 'hello' }

console.log(Option.zipLeft(Option.some("hello"), Option.none()))
// Output: { _id: 'Option', _tag: 'None' }
```

**See**

- `zipRight` to keep the second value instead
- `zipWith` to combine both values

**Signature**

```ts
declare const zipLeft: { <_>(that: Option<_>): <A>(self: Option<A>) => Option<A>; <A, X>(self: Option<A>, that: Option<X>): Option<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Option.ts#L1555)

Since v2.0.0