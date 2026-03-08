Package: `effect`<br />
Module: `Function`<br />

## Function.absurd

The `absurd` function is a stub for cases where a value of type `never` is encountered in your code,
meaning that it should be impossible for this code to be executed.

This function is particularly useful when it's necessary to specify that certain cases are impossible.

**Example**

```ts
import { absurd } from "effect/Function"

const handleNever = (value: never) => {
  return absurd(value) // This will throw an error if called
}
```

**Signature**

```ts
declare const absurd: <A>(_: never) => A
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Function.ts#L423)

Since v2.0.0