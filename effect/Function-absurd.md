Package: `effect`<br />
Module: `Function`<br />

## Function.absurd

Marks an impossible branch by accepting a `never` value and returning any
type.

**When to use**

Use when you need a return value in a branch that exhaustive checks prove
cannot be reached.

**Gotchas**

Calling `absurd` throws, because a value of type `never` should be
impossible at runtime.

**Example** (Handling impossible values)

```ts
import { absurd } from "effect"

const handleNever = (value: never) => {
  return absurd(value) // This will throw an error if called
}
```

**Signature**

```ts
declare const absurd: <A>(_: never) => A
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Function.ts#L518)

Since v2.0.0