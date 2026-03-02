Package: `effect`<br />
Module: `Hash`<br />

## Hash.hash

Computes a hash value for any given value.

This function can hash primitives (numbers, strings, booleans, etc.) as well as
objects, arrays, and other complex data structures. It automatically handles
different types and provides a consistent hash value for equivalent inputs.

**⚠️ CRITICAL IMMUTABILITY REQUIREMENT**: Objects being hashed must be treated as
immutable after their first hash computation. Hash results are cached, so mutating
an object after hashing will lead to stale cached values and broken hash-based
operations. For mutable objects, use referential equality by implementing custom
`Hash` interface that hashes the object reference, not its content.

**FORBIDDEN**: Modifying objects after `Hash.hash()` has been called on them
**ALLOWED**: Using immutable objects, or mutable objects with custom `Hash` interface
that uses referential equality (hashes the object reference, not content)

**Example**

```ts
import { Hash } from "effect"

// Hash primitive values
console.log(Hash.hash(42)) // numeric hash
console.log(Hash.hash("hello")) // string hash
console.log(Hash.hash(true)) // boolean hash

// Hash objects and arrays
console.log(Hash.hash({ name: "John", age: 30 }))
console.log(Hash.hash([1, 2, 3]))
console.log(Hash.hash(new Date("2023-01-01")))
```

**Signature**

```ts
declare const hash: <A>(self: A) => number
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Hash.ts#L85)

Since v2.0.0