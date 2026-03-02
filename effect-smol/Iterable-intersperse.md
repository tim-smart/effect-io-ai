Package: `effect`<br />
Module: `Iterable`<br />

## Iterable.intersperse

Places an element in between members of an `Iterable`.
If the input is a non-empty array, the result is also a non-empty array.

**Example**

```ts
import { Iterable } from "effect"

// Join numbers with separator
const numbers = [1, 2, 3, 4]
const withCommas = Iterable.intersperse(numbers, ",")
console.log(Array.from(withCommas)) // [1, ",", 2, ",", 3, ",", 4]

// Join words with spaces
const words = ["hello", "world", "from", "effect"]
const sentence = Iterable.intersperse(words, " ")
console.log(Array.from(sentence).join("")) // "hello world from effect"

// Empty iterable remains empty
const empty = Iterable.empty<string>()
const stillEmpty = Iterable.intersperse(empty, "-")
console.log(Array.from(stillEmpty)) // []

// Single element has no separators added
const single = [42]
const noSeparator = Iterable.intersperse(single, "|")
console.log(Array.from(noSeparator)) // [42]

// Build CSS-like strings
const styles = ["color: red", "font-size: 14px", "margin: 10px"]
const css = Iterable.intersperse(styles, "; ")
console.log(Array.from(css).join("")) // "color: red; font-size: 14px; margin: 10px"
```

**Signature**

```ts
declare const intersperse: { <B>(middle: B): <A>(self: Iterable<A>) => Iterable<A | B>; <A, B>(self: Iterable<A>, middle: B): Iterable<A | B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Iterable.ts#L917)

Since v2.0.0