Package: `effect`<br />
Module: `Array`<br />

## Array.modifyOption

Apply a function to the element at the specified index, creating a new `Array`,
or return `None` if the index is out of bounds.

**Example**

```ts
import { Array } from "effect"

const input = [1, 2, 3, 4]
const result = Array.modifyOption(input, 2, (n) => n * 2)
console.log(result) // Option.some([1, 2, 6, 4])

const outOfBoundsResult = Array.modifyOption(input, 5, (n) => n * 2)
console.log(outOfBoundsResult) // Option.none()
```

**Signature**

```ts
declare const modifyOption: { <A, B, S extends Iterable<A> = Iterable<A>>(i: number, f: (a: ReadonlyArray.Infer<S>) => B): (self: S) => Option.Option<ReadonlyArray.With<S, ReadonlyArray.Infer<S> | B>>; <A, B, S extends Iterable<A> = Iterable<A>>(self: S, i: number, f: (a: ReadonlyArray.Infer<S>) => B): Option.Option<ReadonlyArray.With<S, ReadonlyArray.Infer<S> | B>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L1247)

Since v2.0.0