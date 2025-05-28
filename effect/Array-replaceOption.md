Package: `effect`<br />
Module: `Array`<br />

## Array.replaceOption

Replaces an element in an array with the given value, returning an option of the updated array.

**Example**

```ts
import { Array } from "effect"

const result = Array.replaceOption([1, 2, 3], 1, 4)
console.log(result) // Option.some([1, 4, 3])
```

**Signature**

```ts
declare const replaceOption: { <B>(i: number, b: B): <A, S extends Iterable<A> = Iterable<A>>(self: S) => Option.Option<ReadonlyArray.With<S, ReadonlyArray.Infer<S> | B>>; <A, B, S extends Iterable<A> = Iterable<A>>(self: S, i: number, b: B): Option.Option<ReadonlyArray.With<S, ReadonlyArray.Infer<S> | B>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L1216)

Since v2.0.0