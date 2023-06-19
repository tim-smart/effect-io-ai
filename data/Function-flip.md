# flip

Reverses the order of arguments for a curried function.

Part of the `Function` module, imported from `@effect/data/Function`.

**Example**

```ts
import { flip } from '@effect/data/Function'

const f = (a: number) => (b: string) => a - b.length

assert.deepStrictEqual(flip(f)('aaa')(2), -1)
```

**Signature**

```ts
export declare const flip: <A extends unknown[], B extends unknown[], C>(
  f: (...a: A) => (...b: B) => C
) => (...b: B) => (...a: A) => C
```
