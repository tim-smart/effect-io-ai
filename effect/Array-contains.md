## contains

Returns a function that checks if a `ReadonlyArray` contains a given value using the default `Equivalence`.

**Example**

```ts
import { Array, pipe } from "effect"

const result = pipe(['a', 'b', 'c', 'd'], Array.contains('c'))
console.log(result) // true
```

**Signature**

```ts
declare const contains: { <A>(a: A): (self: Iterable<A>) => boolean; <A>(self: Iterable<A>, a: A): boolean; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L1732)

Since v2.0.0