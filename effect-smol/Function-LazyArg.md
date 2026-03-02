Package: `effect`<br />
Module: `Function`<br />

## Function.LazyArg

A lazy argument.

**Example**

```ts
import { constant, type LazyArg } from "effect/Function"

const constNull: LazyArg<null> = constant(null)
```

**Signature**

```ts
type LazyArg<A> = () => A
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Function.ts#L192)

Since v2.0.0