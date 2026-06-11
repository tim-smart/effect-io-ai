Package: `effect`<br />
Module: `Hash`<br />

## Hash.hash

Computes a hash value for any given value.

**When to use**

Use to compute an Effect hash for primitives, collections, and hashable
objects.

**Details**

This function can hash primitives (numbers, strings, booleans, etc.) as well as
objects, arrays, and other complex data structures. It automatically handles
different types and provides a consistent hash value for equivalent inputs.

**Gotchas**

Objects being hashed must be treated as immutable after their first hash
computation. Hash results are cached, so mutating an object after hashing will
lead to stale cached values and broken hash-based operations. For mutable
objects, implement a custom `Hash` interface that hashes the object reference
rather than its content.

**Example** (Hashing different values)

```ts
import { Hash } from "effect"

// Hash primitive values
console.log(Hash.hash(42)) // numeric hash
console.log(Hash.hash("hello")) // string hash
console.log(Hash.hash(true)) // boolean hash

// Hash objects and arrays
console.log(Hash.hash({ name: "John", age: 30 }))
console.log(Hash.hash([1, 2, 3]))
console.log(Hash.hash({ id: "user-1", roles: ["admin", "editor"] }))
```

**Signature**

```ts
declare const hash: <A>(self: A) => number
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Hash.ts#L110)

Since v2.0.0