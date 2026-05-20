Package: `effect`<br />
Module: `Function`<br />

## Function.hole

Creates a compile-time placeholder for a value of any type.

**Gotchas**

`hole` is intended for temporary development use. If the placeholder is
evaluated at runtime, it throws.

**Example** (Creating a development placeholder)

```ts
import { hole } from "effect"

// Intentionally not called: `hole` throws if the placeholder is evaluated.
const buildUser = (id: number): { readonly id: number; readonly name: string } => ({
  id,
  name: hole<string>()
})

console.log(typeof buildUser) // "function"
```

**Signature**

```ts
declare const hole: <T>() => T
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Function.ts#L1290)

Since v2.0.0