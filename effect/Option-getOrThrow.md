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
import { Option } from "effect"

assert.deepStrictEqual(Option.getOrThrow(Option.some(1)), 1)
assert.throws(() => Option.getOrThrow(Option.none()))
```

**Signature**

```ts
export declare const getOrThrow: <A>(self: Option<A>) => A
```
