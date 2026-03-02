Package: `effect`<br />
Module: `Hash`<br />

## Hash.random

Generates a random hash value for an object and caches it.

This function creates a random hash value for objects that don't have their own
hash implementation. The hash value is cached using a WeakMap, so the same object
will always return the same hash value during its lifetime.

**Example**

```ts
import { Hash } from "effect"

const obj1 = { a: 1 }
const obj2 = { a: 1 }

// Same object always returns the same hash
console.log(Hash.random(obj1) === Hash.random(obj1)) // true

// Different objects get different hashes
console.log(Hash.random(obj1) === Hash.random(obj2)) // false
```

**Signature**

```ts
declare const random: <A extends object>(self: A) => number
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Hash.ts#L163)

Since v2.0.0