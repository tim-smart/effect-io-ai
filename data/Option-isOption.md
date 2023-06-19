# isOption

Tests if a value is a `Option`.

Part of the `Option` module, imported from `@effect/data/Option`.

**Example**

```ts
import { some, none, isOption } from '@effect/data/Option'

assert.deepStrictEqual(isOption(some(1)), true)
assert.deepStrictEqual(isOption(none()), true)
assert.deepStrictEqual(isOption({}), false)
```

**Signature**

```ts
export declare const isOption: (input: unknown) => input is Option<unknown>
```
