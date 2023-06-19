# getOrThrowWith

Extracts the value of an `Option` or throws if the `Option` is `None`.

If a default error is sufficient for your use case and you don't need to configure the thrown error, see {@link getOrThrow}.

Part of the `Option` module, imported from `@effect/data/Option`.

**Example**

```ts
import * as O from '@effect/data/Option'

assert.deepStrictEqual(
  O.getOrThrowWith(O.some(1), () => new Error('Unexpected None')),
  1
)
assert.throws(() => O.getOrThrowWith(O.none(), () => new Error('Unexpected None')))
```

**Signature**

```ts
export declare const getOrThrowWith: {
  (onNone: () => unknown): <A>(self: Option<A>) => A
  <A>(self: Option<A>, onNone: () => unknown): A
}
```
