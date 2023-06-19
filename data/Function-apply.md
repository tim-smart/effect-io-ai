# apply

Apply a function to a given value.

Part of the `Function` module, imported from `@effect/data/Function`.

**Example**

```ts
import { pipe, apply } from '@effect/data/Function'
import { length } from '@effect/data/String'

assert.deepStrictEqual(pipe(length, apply('hello')), 5)
```

**Signature**

```ts
export declare const apply: <A>(a: A) => <B>(self: (a: A) => B) => B
```
