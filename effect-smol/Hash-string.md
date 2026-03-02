Package: `effect`<br />
Module: `Hash`<br />

## Hash.string

Computes a hash value for a string using the djb2 algorithm.

This function implements a variation of the djb2 hash algorithm, which is
known for its good distribution properties and speed. It processes each
character of the string to produce a consistent hash value.

**Example**

```ts
import { Hash } from "effect"

console.log(Hash.string("hello")) // hash of "hello"
console.log(Hash.string("world")) // hash of "world"
console.log(Hash.string("")) // hash of empty string

// Same strings produce the same hash
console.log(Hash.string("test") === Hash.string("test")) // true
```

**Signature**

```ts
declare const string: (str: string) => number
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Hash.ts#L316)

Since v2.0.0