# untupled

Inverse function of `tupled`

Part of the `Function` module, imported from `@effect/data/Function`.

**Example**

```ts
import { untupled } from '@effect/data/Function'

const getFirst = untupled(<A, B>(tuple: [A, B]): A => tuple[0])

assert.deepStrictEqual(getFirst(1, 2), 1)
```

**Signature**

```ts
export declare const untupled: <A extends readonly unknown[], B>(f: (a: A) => B) => (...a: A) => B
```
