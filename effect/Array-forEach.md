# forEach

Performs a side-effect for each element of the `Iterable`.

To import and use `forEach` from the "Array" module:

ts
import \* as Array from "effect/Array"
// Can be accessed like this
Array.forEach
undefined

**Example**

```ts
import { Array } from "effect"

const numbers = [1, 2, 3]
Array.forEach(numbers, (n) => console.log(n)) // 1, 2, 3
```

**Signature**

```ts
export declare const forEach: {
  <A>(f: (a: A, i: number) => void): (self: Iterable<A>) => void
  <A>(self: Iterable<A>, f: (a: A, i: number) => void): void
}
```
