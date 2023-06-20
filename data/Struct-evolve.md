# evolve

Transforms the values of a Struct provided a transformation function for each key.
If no transformation function is provided for a key, it will return the origional value for that key.

To import and use `evolve` from the "Struct" module:

```ts
import * as Struct from '@effect/data/Struct'

// Can be accessed like this
Struct.evolve
```

**Example**

```ts
import { evolve } from '@effect/data/Struct'
import { pipe } from '@effect/data/Function'

assert.deepStrictEqual(
  pipe(
    { a: 'a', b: 1, c: 3 },
    evolve({
      a: (a) => a.length,
      b: (b) => b * 2,
    })
  ),
  { a: 1, b: 2, c: 3 }
)
```

**Signature**

```ts
export declare const evolve: {
  <O, T extends Partial<{ [K in keyof O]: (a: O[K]) => unknown }>>(t: T): (obj: O) => {
    [K in keyof O]: K extends keyof T ? (T[K] extends (...a: any) => any ? ReturnType<T[K]> : O[K]) : O[K]
  }
  <O, T extends Partial<{ [K in keyof O]: (a: O[K]) => unknown }>>(obj: O, t: T): {
    [K in keyof O]: K extends keyof T ? (T[K] extends (...a: any) => any ? ReturnType<T[K]> : O[K]) : O[K]
  }
}
```
