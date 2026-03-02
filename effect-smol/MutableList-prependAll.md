Package: `effect`<br />
Module: `MutableList`<br />

## MutableList.prependAll

Prepends all elements from an iterable to the beginning of the MutableList.
The elements are added in order, so the first element in the iterable becomes
the new head of the list.

**Example**

```ts
import * as MutableList from "effect/MutableList"

const list = MutableList.make<number>()
MutableList.append(list, 4)
MutableList.append(list, 5)

// Prepend multiple elements
MutableList.prependAll(list, [1, 2, 3])

console.log(list.length) // 5

// Elements are taken in order: [1, 2, 3, 4, 5]
console.log(MutableList.takeAll(list)) // [1, 2, 3, 4, 5]

// Works with any iterable
const newList = MutableList.make<string>()
MutableList.prependAll(newList, "hello") // Prepends each character
console.log(MutableList.takeAll(newList)) // ["h", "e", "l", "l", "o"]
```

**Signature**

```ts
declare const prependAll: <A>(self: MutableList<A>, messages: Iterable<A>) => void
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/MutableList.ts#L390)

Since v4.0.0