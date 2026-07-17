Package: `effect`<br />
Module: `Option`<br />

## Option.fromIterable

Wraps the first element of an `Iterable` in a `Some`, or returns `None` if
the iterable is empty.

**When to use**

Use when you need to safely extract the head of a collection, including
generators or lazy iterables.

**Details**

- Only consumes the first element; does not iterate the rest
- Returns `None` for empty iterables

**Example** (Getting the first element)

```ts
import { Option } from "effect"

console.log(Option.fromIterable([1, 2, 3]))
// Output: { _id: 'Option', _tag: 'Some', value: 1 }

console.log(Option.fromIterable([]))
// Output: { _id: 'Option', _tag: 'None' }
```

**See**

- `toArray` for the inverse direction

**Signature**

```ts
declare const fromIterable: <A>(collection: Iterable<A>) => Option<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Option.ts#L513)

Since v2.0.0