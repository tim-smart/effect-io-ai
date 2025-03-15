Package: `effect`<br />
Module: `Array`<br />

## Array.ensure

Creates a new `Array` from a value that might not be an iterable.

**Example**

```ts
import { Array } from "effect"

console.log(Array.ensure("a")) // ["a"]
console.log(Array.ensure(["a"])) // ["a"]
console.log(Array.ensure(["a", "b", "c"])) // ["a", "b", "c"]
```

**Signature**

```ts
declare const ensure: <A>(self: ReadonlyArray<A> | A) => Array<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L184)

Since v3.3.0