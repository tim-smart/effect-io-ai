# fromIterable

Converts an `Iterable` of values into an `Option`. Returns the first value of the `Iterable` wrapped in a `Some`
if the `Iterable` is not empty, otherwise returns `None`.

Part of the `Option` module, imported from `@effect/data/Option`.

**Example**

```ts
import { fromIterable, some, none } from '@effect/data/Option'

assert.deepStrictEqual(fromIterable([1, 2, 3]), some(1))
assert.deepStrictEqual(fromIterable([]), none())
```

**Signature**

```ts
export declare const fromIterable: <A>(collection: Iterable<A>) => Option<A>
```
