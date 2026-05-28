Package: `effect`<br />
Module: `Boolean`<br />

## Boolean.match

Chooses between two lazy branches based on a boolean value.

**When to use**

Use to choose between two lazy branches based on a boolean value.

**Example** (Pattern matching on booleans)

```ts
import { Boolean } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(
  Boolean.match(true, {
    onFalse: () => "It's false!",
    onTrue: () => "It's true!"
  }),
  "It's true!"
)
```

**Signature**

```ts
declare const match: { <A, B = A>(options: { readonly onFalse: LazyArg<A>; readonly onTrue: LazyArg<B>; }): (value: boolean) => A | B; <A, B>(value: boolean, options: { readonly onFalse: LazyArg<A>; readonly onTrue: LazyArg<B>; }): A | B; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Boolean.ts#L146)

Since v2.0.0