Package: `effect`<br />
Module: `Function`<br />

## Function.LazyArg

A zero-argument function that produces a value when invoked.

**When to use**

Use to type a lazy value provider that should not run until called.

**Example** (Creating a lazy argument)

```ts
import { Function } from "effect"

const constNull: Function.LazyArg<null> = Function.constant(null)
```

**Signature**

```ts
type LazyArg<A> = () => A
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Function.ts#L241)

Since v2.0.0