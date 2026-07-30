Package: `effect`<br />
Module: `Option`<br />

## Option.fromIterable

Converts an `Iterable` into an `Option`, wrapping the first element if it
exists.

**Details**

This function takes an `Iterable` (e.g., an array, a generator, or any object
implementing the `Iterable` interface) and returns an `Option` based on its
content:

- If the `Iterable` contains at least one element, the first element is
  wrapped in a `Some` and returned.
- If the `Iterable` is empty, `None` is returned, representing the absence of
  a value.

This utility is useful for safely handling collections that might be empty,
ensuring you explicitly handle both cases where a value exists or doesn't.

**Example**

```ts
import { Option } from "effect"

console.log(Option.fromIterable([1, 2, 3]))
// Output: { _id: 'Option', _tag: 'Some', value: 1 }

console.log(Option.fromIterable([]))
// Output: { _id: 'Option', _tag: 'None' }
```

**Signature**

```ts
declare const fromIterable: <A>(collection: Iterable<A>) => Option<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Option.ts#L390)

Since v2.0.0