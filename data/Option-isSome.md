# isSome

Determine if a `Option` is a `Some`.

Part of the `Option` module, imported from `@effect/data/Option`.

**Example**

```ts
import { some, none, isSome } from '@effect/data/Option'

assert.deepStrictEqual(isSome(some(1)), true)
assert.deepStrictEqual(isSome(none()), false)
```

**Signature**

```ts
export declare const isSome: <A>(self: Option<A>) => self is Some<A>
```
