Package: `effect`<br />
Module: `HashSet`<br />

## HashSet.forEach

Applies the specified function to the values of the `HashSet`.

The time complexity is of **`O(n)`**.

**Example**

```ts
// Syntax
import { HashSet, pipe } from "effect"

// with `data-last`, a.k.a. `pipeable` API
pipe(HashSet.make(0, 1, 2), HashSet.forEach(console.log)) // logs: 0 1 2

// or piped with the pipe method
HashSet.make(0, 1, 2).pipe(HashSet.forEach(console.log)) // logs: 0 1 2

// or with `data-first` API
HashSet.forEach(HashSet.make(0, 1, 2), console.log) // logs: 0 1 2
```

**Signature**

```ts
declare const forEach: { <A>(f: (value: A) => void): (self: HashSet<A>) => void; <A>(self: HashSet<A>, f: (value: A) => void): void; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HashSet.ts#L1915)

Since v2.0.0