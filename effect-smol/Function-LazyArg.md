Package: `effect`<br />
Module: `Function`<br />

## Function.LazyArg

A zero-argument function that produces a value when invoked.

**Example** (Creating a lazy argument)

```ts
import { constant, type LazyArg } from "effect/Function"

const constNull: LazyArg<null> = constant(null)
```

**Signature**

```ts
type LazyArg<A> = () => A
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Function.ts#L226)

Since v2.0.0