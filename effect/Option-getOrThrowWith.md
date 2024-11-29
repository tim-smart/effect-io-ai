# getOrThrowWith

Extracts the value of an `Option` or throws if the `Option` is `None`.

If a default error is sufficient for your use case and you don't need to configure the thrown error, see {@link getOrThrow}.

To import and use `getOrThrowWith` from the "Option" module:

ts
import \* as Option from "effect/Option"
// Can be accessed like this
Option.getOrThrowWith
undefined

**Example**

```ts
import { Option } from "effect"

assert.deepStrictEqual(
  Option.getOrThrowWith(Option.some(1), () => new Error("Unexpected None")),
  1
)
assert.throws(() => Option.getOrThrowWith(Option.none(), () => new Error("Unexpected None")))
```

**Signature**

```ts
export declare const getOrThrowWith: {
  (onNone: () => unknown): <A>(self: Option<A>) => A
  <A>(self: Option<A>, onNone: () => unknown): A
}
```
