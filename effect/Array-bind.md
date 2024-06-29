# bind

The "do simulation" for array allows you to sequentially apply operations to the elements of arrays, just as nested loops allow you to go through all combinations of elements in an arrays.

It can be used to simulate "array comprehension".
It's a technique that allows you to create new arrays by iterating over existing ones and applying specific **conditions** or **transformations** to the elements. It's like assembling a new collection from pieces of other collections based on certain rules.

Here's how the do simulation works:

1. Start the do simulation using the `Do` value
2. Within the do simulation scope, you can use the `bind` function to define variables and bind them to `Array` values
3. You can accumulate multiple `bind` statements to define multiple variables within the scope
4. Inside the do simulation scope, you can also use the `let` function to define variables and bind them to simple values
5. Regular `Option` functions like `map` and `filter` can still be used within the do simulation. These functions will receive the accumulated variables as arguments within the scope

To import and use `bind` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.bind
```

**Example**

```ts
import { Array as Arr, pipe } from "effect"
const doResult = pipe(
  Arr.Do,
  Arr.bind("x", () => [1, 3, 5]),
  Arr.bind("y", () => [2, 4, 6]),
  Arr.filter(({ x, y }) => x < y), // condition
  Arr.map(({ x, y }) => [x, y] as const) // transformation
)
assert.deepStrictEqual(doResult, [
  [1, 2],
  [1, 4],
  [1, 6],
  [3, 4],
  [3, 6],
  [5, 6]
])

// equivalent
const x = [1, 3, 5],
  y = [2, 4, 6],
  result = []
for (let i = 0; i < x.length; i++) {
  for (let j = 0; j < y.length; j++) {
    const _x = x[i],
      _y = y[j]
    if (_x < _y) result.push([_x, _y] as const)
  }
}
```

**Signature**

```ts
export declare const bind: {
  <A extends object, N extends string, B>(
    tag: Exclude<N, keyof A>,
    f: (a: A) => readonly B[]
  ): (self: readonly A[]) => { [K in N | keyof A]: K extends keyof A ? A[K] : B }[]
  <A extends object, N extends string, B>(
    self: readonly A[],
    tag: Exclude<N, keyof A>,
    f: (a: A) => readonly B[]
  ): { [K in N | keyof A]: K extends keyof A ? A[K] : B }[]
}
```
