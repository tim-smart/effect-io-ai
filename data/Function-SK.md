# SK

The SK combinator, also known as the "S-K combinator" or "S-combinator", is a fundamental combinator in the
lambda calculus and the SKI combinator calculus.

This function is useful for discarding the first argument passed to it and returning the second argument.

Part of the `Function` module, imported from `@effect/data/Function`.

**Example**

```ts
import { SK } from '@effect/data/Function'

assert.deepStrictEqual(SK(0, 'hello'), 'hello')
```

**Signature**

```ts
export declare const SK: <A, B>(_: A, b: B) => B
```
