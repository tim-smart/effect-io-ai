# getRight

Converts a `Either` to an `Option` discarding the error.

Alias of {@link fromEither}.

To import and use `getRight` from the "Option" module:

```ts
import * as Option from "effect/Option"
// Can be accessed like this
Option.getRight
```

**Example**

```ts
import { Option, Either } from "effect"

assert.deepStrictEqual(Option.getRight(Either.right("ok")), Option.some("ok"))
assert.deepStrictEqual(Option.getRight(Either.left("err")), Option.none())
```

**Signature**

```ts
export declare const getRight: <R, L>(self: Either<R, L>) => Option<R>
```
