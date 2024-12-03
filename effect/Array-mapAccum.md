# mapAccum

Statefully maps over the chunk, producing new elements of type `B`.

To import and use `mapAccum` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.mapAccum
```

**Example**

```ts
import { Array } from "effect"

const numbers = [1, 2, 3]
const result = Array.mapAccum(numbers, 0, (acc, n) => [acc + n, acc + n])
assert.deepStrictEqual(result, [6, [1, 3, 6]])
```

**Signature**

```ts
export declare const mapAccum: {
  <S, A, B, I extends Iterable<A> = Iterable<A>>(
    s: S,
    f: (s: S, a: ReadonlyArray.Infer<I>, i: number) => readonly [S, B]
  ): (self: I) => [state: S, mappedArray: ReadonlyArray.With<I, B>]
  <S, A, B, I extends Iterable<A> = Iterable<A>>(
    self: I,
    s: S,
    f: (s: S, a: ReadonlyArray.Infer<I>, i: number) => readonly [S, B]
  ): [state: S, mappedArray: ReadonlyArray.With<I, B>]
}
```
