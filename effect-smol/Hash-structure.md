Package: `effect`<br />
Module: `Hash`<br />

## Hash.structure

Computes a structural hash for an object using Effect's object key collection.

**Details**

The hash is based on the object's structural keys and their values, including
symbol keys and relevant prototype keys for non-plain objects.

**Example** (Hashing object structures)

```ts
import { Hash } from "effect"

const obj1 = { name: "John", age: 30 }
const obj2 = { name: "Jane", age: 25 }
const obj3 = { name: "John", age: 30 }

console.log(Hash.structure(obj1)) // hash of obj1
console.log(Hash.structure(obj2)) // different hash
console.log(Hash.structure(obj3)) // same as obj1

// Objects with same properties produce same hash
console.log(Hash.structure(obj1) === Hash.structure(obj3)) // true
```

**Signature**

```ts
declare const structure: <A extends object>(o: A) => number
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Hash.ts#L414)

Since v2.0.0