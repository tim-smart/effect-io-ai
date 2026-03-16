Package: `effect`<br />
Module: `Option`<br />

## Option.firstSomeOf

Returns the first `Some` found in an iterable of `Option`s, or `None` if
all are `None`.

**When to use**

- Searching for the first available value in a priority list

**Behavior**

- Short-circuits on the first `Some`
- Returns `None` only when every element is `None`

**Example** (Finding the first Some)

```ts
import { Option } from "effect"

console.log(Option.firstSomeOf([
  Option.none(),
  Option.some(1),
  Option.some(2)
]))
// Output: { _id: 'Option', _tag: 'Some', value: 1 }
```

**See**

- `orElse` for a two-option fallback

**Signature**

```ts
declare const firstSomeOf: <T, C extends Iterable<Option<T>> = Iterable<Option<T>>>(collection: C) => [C] extends [Iterable<Option<infer A>>] ? Option<A> : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Option.ts#L816)

Since v2.0.0