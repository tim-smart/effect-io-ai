Package: `effect`<br />
Module: `Array`<br />

## Array.fromIterable

Creates a new `Array` from an iterable collection of values.
If the input is already an array, it returns the input as-is.
Otherwise, it converts the iterable collection to an array.

**Example**

```ts
import { Array } from "effect"

const result = Array.fromIterable(new Set([1, 2, 3]))
console.log(result) // [1, 2, 3]
```

**Signature**

```ts
declare const fromIterable: <A>(collection: Iterable<A>) => Array<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L165)

Since v2.0.0