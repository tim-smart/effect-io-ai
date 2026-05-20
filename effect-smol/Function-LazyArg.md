Package: `effect`<br />
Module: `Function`<br />

## Function.LazyArg

A zero-argument function that produces a value when invoked.

**Example** (Creating a lazy argument)

```ts
import { Function } from "effect"

const constNull: Function.LazyArg<null> = Function.constant(null)
```

**Signature**

```ts
type LazyArg<A> = () => A
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Function.ts#L217)

Since v2.0.0