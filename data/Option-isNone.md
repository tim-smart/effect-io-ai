# isNone

Determine if a `Option` is a `None`.

Part of the `Option` module, imported from `@effect/data/Option`.

**Example**

```ts
import { some, none, isNone } from '@effect/data/Option'

assert.deepStrictEqual(isNone(some(1)), false)
assert.deepStrictEqual(isNone(none()), true)
```

**Signature**

```ts
export declare const isNone: <A>(self: Option<A>) => self is None<A>
```
