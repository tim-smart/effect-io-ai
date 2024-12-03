# evolve

Transforms the values of a Struct provided a transformation function for each key.
If no transformation function is provided for a key, it will return the origional value for that key.

To import and use `evolve` from the "Struct" module:

```ts
import * as Struct from "effect/Struct"
// Can be accessed like this
Struct.evolve
```

**Example**

```ts
import { pipe, Struct } from "effect"

assert.deepStrictEqual(
  pipe(
    { a: "a", b: 1, c: 3 },
    Struct.evolve({
      a: (a) => a.length,
      b: (b) => b * 2
    })
  ),
  { a: 1, b: 2, c: 3 }
)
```

**Signature**

```ts
export declare const evolve: {
  <O, T>(t: PartialTransform<O, T>): (obj: O) => Transformed<O, T>
  <O, T>(obj: O, t: PartialTransform<O, T>): Transformed<O, T>
}
```
