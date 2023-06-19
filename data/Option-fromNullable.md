# fromNullable

Constructs a new `Option` from a nullable type. If the value is `null` or `undefined`, returns `None`, otherwise
returns the value wrapped in a `Some`.

Part of the `Option` module, imported from `@effect/data/Option`.

**Example**

```ts
import * as O from '@effect/data/Option'

assert.deepStrictEqual(O.fromNullable(undefined), O.none())
assert.deepStrictEqual(O.fromNullable(null), O.none())
assert.deepStrictEqual(O.fromNullable(1), O.some(1))
```

**Signature**

```ts
export declare const fromNullable: <A>(nullableValue: A) => Option<NonNullable<A>>
```
