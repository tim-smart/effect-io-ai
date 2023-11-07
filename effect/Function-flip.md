# flip

Reverses the order of arguments for a curried function.

To import and use `flip` from the "Function" module:

```ts
import * as Function from 'effect/Function'

// Can be accessed like this
Function.flip
```

**Example**

```ts
import { flip } from 'effect/Function'

const f = (a: number) => (b: string) => a - b.length

assert.deepStrictEqual(flip(f)('aaa')(2), -1)
```

**Signature**

```ts
export declare const flip: <A extends unknown[], B extends unknown[], C>(
  f: (...a: A) => (...b: B) => C
) => (...b: B) => (...a: A) => C
```
