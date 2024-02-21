# getOrThrow

Extracts the value of an `Either` or throws if the `Either` is `Left`.

The thrown error is a default error. To configure the error thrown, see {@link getOrThrowWith}.

To import and use `getOrThrow` from the "Either" module:

```ts
import * as Either from "effect/Either"
// Can be accessed like this
Either.getOrThrow
```

**Example**

```ts
import * as E from "effect/Either"

assert.deepStrictEqual(E.getOrThrow(E.right(1)), 1)
assert.throws(() => E.getOrThrow(E.left("error")))
```

**Signature**

```ts
export declare const getOrThrow: <R, L>(self: Either<R, L>) => R
```
