Package: `effect`<br />
Module: `Iterable`<br />

## Iterable.headUnsafe

Gets the first element of an `Iterable` without returning an `Option`.

**When to use**

Use when the `Iterable` is known to be non-empty and direct access to the
first element is preferred over handling `Option.none`.

**Gotchas**

Throws if the `Iterable` is empty.

**Example** (Getting the first element unsafely)

```ts
import { Iterable } from "effect"

const numbers = [1, 2, 3]
console.log(Iterable.headUnsafe(numbers)) // 1

const letters = "hello"
console.log(Iterable.headUnsafe(letters)) // "h"

// Iterable.headUnsafe(Iterable.empty<number>())
// throws Error: "headUnsafe: empty iterable"

// Use only when you're certain the iterable is non-empty
const nonEmpty = Iterable.range(1, 10)
console.log(Iterable.headUnsafe(nonEmpty)) // 1
```

**Signature**

```ts
declare const headUnsafe: <A>(self: Iterable<A>) => A
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Iterable.ts#L591)

Since v4.0.0