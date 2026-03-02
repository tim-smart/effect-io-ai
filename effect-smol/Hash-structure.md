Package: `effect`<br />
Module: `Hash`<br />

## Hash.structure

Computes a hash value for an object using all of its enumerable keys.

This function creates a hash value based on all enumerable properties of an object.
It's a convenient way to hash an entire object structure when you want to consider
all its properties.

**Example**

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Hash.ts#L387)

Since v2.0.0