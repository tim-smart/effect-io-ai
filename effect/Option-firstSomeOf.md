Package: `effect`<br />
Module: `Option`<br />

## Option.firstSomeOf

Returns the first `Some` value found in an `Iterable` collection of
`Option`s, or `None` if no `Some` is found.

**Details**

This function iterates over a collection of `Option` values and returns the
first `Some` it encounters. If the collection contains only `None` values,
the result will also be `None`. This utility is useful for efficiently
finding the first valid value in a sequence of potentially empty or invalid
options.

The iteration stops as soon as a `Some` is found, making this function
efficient for large collections.

**Example**

```ts
import { Option } from "effect"

console.log(Option.firstSomeOf([
  Option.none(),
  Option.some(1),
  Option.some(2)
]))
// Output: { _id: 'Option', _tag: 'Some', value: 1 }
```

**Signature**

```ts
declare const firstSomeOf: <T, C extends Iterable<Option<T>> = Iterable<Option<T>>>(collection: C) => [C] extends [Iterable<Option<infer A>>] ? Option<A> : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Option.ts#L651)

Since v2.0.0