Package: `effect`<br />
Module: `Boolean`<br />

## Boolean.match

This function returns the result of either of the given functions depending on the value of the boolean parameter.
It is useful when you have to run one of two functions depending on the boolean value.

**Example**

```ts
import * as assert from "node:assert"
import { Boolean } from "effect"

assert.deepStrictEqual(Boolean.match(true, { onFalse: () => "It's false!", onTrue: () => "It's true!" }), "It's true!")
```

**Signature**

```ts
declare const match: { <A, B = A>(options: { readonly onFalse: LazyArg<A>; readonly onTrue: LazyArg<B>; }): (value: boolean) => A | B; <A, B>(value: boolean, options: { readonly onFalse: LazyArg<A>; readonly onTrue: LazyArg<B>; }): A | B; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Boolean.ts#L46)

Since v2.0.0