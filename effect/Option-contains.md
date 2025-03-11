## contains

Returns a function that checks if an `Option` contains a specified value
using the default `Equivalence`.

**Details**

This function allows you to check whether an `Option` contains a specific
value. It uses the default `Equivalence` for equality comparison. If the
`Option` is `Some` and its value is equivalent to the provided value, the
result is `true`. If the `Option` is `None` or the values are not equivalent,
the result is `false`.

**Example**

```ts
import { Option } from "effect"

console.log(Option.some(2).pipe(Option.contains(2)))
// Output: true

console.log(Option.some(1).pipe(Option.contains(2)))
// Output: false

console.log(Option.none().pipe(Option.contains(2)))
// Output: false
```

**See**

- `containsWith` for a version that allows you to specify a custom equivalence function.

**Signature**

```ts
declare const contains: { <A>(a: A): (self: Option<A>) => boolean; <A>(self: Option<A>, a: A): boolean; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Option.ts#L1892)

Since v2.0.0