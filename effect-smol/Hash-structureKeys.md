Package: `effect`<br />
Module: `Hash`<br />

## Hash.structureKeys

Computes a hash value for an object using only the specified keys.

This function allows you to hash an object by considering only specific keys,
which is useful when you want to create a hash based on a subset of an object's
properties.

**Example**

```ts
import { Hash } from "effect"

const person = { name: "John", age: 30, city: "New York" }

// Hash only specific keys
const hash1 = Hash.structureKeys(person, ["name", "age"])
const hash2 = Hash.structureKeys(person, ["name", "city"])

console.log(hash1) // hash based on name and age
console.log(hash2) // hash based on name and city

// Same keys produce the same hash
const person2 = { name: "John", age: 30, city: "Boston" }
const hash3 = Hash.structureKeys(person2, ["name", "age"])
console.log(hash1 === hash3) // true
```

**Signature**

```ts
declare const structureKeys: (o: object, keys: Iterable<PropertyKey>) => number
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Hash.ts#L353)

Since v2.0.0