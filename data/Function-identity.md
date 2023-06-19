# identity

The identity function, i.e. A function that returns its input argument.

Part of the `Function` module, imported from `@effect/data/Function`.

**Example**

```ts
import { identity } from '@effect/data/Function'

assert.deepStrictEqual(identity(5), 5)
```

**Signature**

```ts
export declare const identity: <A>(a: A) => A
```
