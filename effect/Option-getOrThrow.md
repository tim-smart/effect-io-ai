# getOrThrow

Extracts the value of an `Option` or throws if the `Option` is `None`.

The thrown error is a default error. To configure the error thrown, see {@link getOrThrowWith}.

To import and use `getOrThrow` from the "Option" module:

```ts
import * as Option from "effect/Option"
// Can be accessed like this
Option.getOrThrow
```

**Example**

```ts
import * as O from "effect/Option"

assert.deepStrictEqual(O.getOrThrow(O.some(1)), 1)
assert.throws(() => O.getOrThrow(O.none()))
```

**Signature**

```ts
export declare const getOrThrow: <A>(self: Option<A>) => A
```
