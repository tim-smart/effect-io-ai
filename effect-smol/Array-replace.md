Package: `effect`<br />
Module: `Array`<br />

## Array.replace

Replaces the element at the specified index with a new value, returning a new
array, wrapped in an `Option`.

- Does not mutate the input.

**Example** (Replacing an element)

```ts
import { Array } from "effect"

console.log(Array.replace([1, 2, 3], 1, 4)) // Option.some([1, 4, 3])
```

**See**

- `modify` — transform an element with a function
- `insertAt` — insert without removing

**Signature**

```ts
declare const replace: { <B>(i: number, b: B): <A, S extends Iterable<A> = Iterable<A>>(self: S) => Option.Option<ReadonlyArray.With<S, ReadonlyArray.Infer<S> | B>>; <A, B, S extends Iterable<A> = Iterable<A>>(self: S, i: number, b: B): Option.Option<ReadonlyArray.With<S, ReadonlyArray.Infer<S> | B>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L1697)

Since v2.0.0